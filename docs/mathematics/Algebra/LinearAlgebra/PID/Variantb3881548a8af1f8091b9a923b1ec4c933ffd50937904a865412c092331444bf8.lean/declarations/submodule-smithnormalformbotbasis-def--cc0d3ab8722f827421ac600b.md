# Submodule.smithNormalFormBotBasis_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0f50023-0abc-980f-25be-b85ecc3a3492",
  "kind": "theorem",
  "lexical_name": "Submodule.smithNormalFormBotBasis_def",
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
  "slug": "submodule-smithnormalformbotbasis-def--cc0d3ab8722f827421ac600b",
  "source": {
    "blob": "5ec6de0d580be11865a9728c9e1c9a1f816900e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 652,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc0d3ab8722f827421ac600b50be9ae8f2696a8e050baeab7abd314dba47c607",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0f50023-0abc-980f-25be-b85ecc3a3492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.smithNormalFormBotBasis_def (b : Basis ι R M)
    (h : Module.finrank R N = Module.finrank R M) :
    ∀ i, (smithNormalFormBotBasis b h i : M) =
      smithNormalFormCoeffs b h i • smithNormalFormTopBasis b h i :=
  (exists_smith_normal_form_of_rank_eq b h).choose_spec.choose_spec.choose_spec

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec6de0d580be11865a9728c9e1c9a1f816900e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
