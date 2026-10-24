# differentiableOn_conductorThreeLogDerivativeResidual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb5361e98c4071e3b529b7d774f0b91017bbe2e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05064727-82cc-6805-60a0-c8d7e6cacb5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18bf2d77-ce57-ce65-3f4e-28a33ace3c8a",
  "kind": "theorem",
  "lexical_name": "differentiableOn_conductorThreeLogDerivativeResidual",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "differentiableon-conductorthreelogderivativeresidual--37915414453925c5d7f197a5",
  "source": {
    "blob": "bb5361e98c4071e3b529b7d774f0b91017bbe2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 241,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37915414453925c5d7f197a566e2abd7552413669ff76019cbadf19bfe0e48eb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18bf2d77-ce57-ce65-3f4e-28a33ace3c8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableOn_conductorThreeLogDerivativeResidual
    (hHalf : TwistedPsiHalfPlusEpsilon) :
    DifferentiableOn ℂ conductorThreeLogDerivativeResidual
      conductorThreeCriticalRightHalfPlane := by
  have hL : DifferentiableOn ℂ
      (DirichletCharacter.LFunction conductorThreeCharacter)
      conductorThreeCriticalRightHalfPlane :=
    (DirichletCharacter.differentiable_LFunction
      conductorThreeCharacter_ne_one).differentiableOn
  have hL' : DifferentiableOn ℂ
      (deriv (DirichletCharacter.LFunction conductorThreeCharacter))
      conductorThreeCriticalRightHalfPlane :=
    hL.deriv isOpen_conductorThreeCriticalRightHalfPlane
  exact hL'.add
    ((differentiableOn_conductorThreeMellinLogDerivative hHalf).mul hL)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5361e98c4071e3b529b7d774f0b91017bbe2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
