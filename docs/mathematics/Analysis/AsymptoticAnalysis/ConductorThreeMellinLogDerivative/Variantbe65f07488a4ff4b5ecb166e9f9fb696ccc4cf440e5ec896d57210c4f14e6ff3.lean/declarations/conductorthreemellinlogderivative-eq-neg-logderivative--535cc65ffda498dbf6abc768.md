# conductorThreeMellinLogDerivative_eq_neg_logDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "318e08dfc8b50fabc6eb0f843f58534e97cd8517",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe4220b6-8c81-4db7-dcab-b28600d3ccaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e679e53-4622-a4d4-17b3-8cc8e3f542c0",
  "kind": "theorem",
  "lexical_name": "conductorThreeMellinLogDerivative_eq_neg_logDerivative",
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
  "slug": "conductorthreemellinlogderivative-eq-neg-logderivative--535cc65ffda498dbf6abc768",
  "source": {
    "blob": "318e08dfc8b50fabc6eb0f843f58534e97cd8517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 187,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:535cc65ffda498dbf6abc7680aacfd8956ba5df96698cfe858ddb128109ec48f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e679e53-4622-a4d4-17b3-8cc8e3f542c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeMellinLogDerivative_eq_neg_logDerivative
    (hHalf : TwistedPsiHalfPlusEpsilon) {s : ℂ} (hs : 1 < s.re) :
    conductorThreeMellinLogDerivative s =
      -deriv (DirichletCharacter.LFunction conductorThreeCharacter) s /
        DirichletCharacter.LFunction conductorThreeCharacter s := by
  rw [conductorThreeMellinLogDerivative_eq_LSeries hHalf hs]
  change LSeries
      ((fun n : ℕ ↦ conductorThreeCharacter n) *
        (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ))) s = _
  rw [DirichletCharacter.LSeries_twist_vonMangoldt_eq
    conductorThreeCharacter hs]
  rw [← DirichletCharacter.LFunction_eq_LSeries conductorThreeCharacter hs,
    ← DirichletCharacter.deriv_LFunction_eq_deriv_LSeries
      conductorThreeCharacter hs]

/-- Open half-plane on which the half-plus-epsilon hypothesis gives a Mellin
continuation. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variantbe65f07488a4ff4b5ecb166e9f9fb696ccc4cf440e5ec896d57210c4f14e6ff3.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318e08dfc8b50fabc6eb0f843f58534e97cd8517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
