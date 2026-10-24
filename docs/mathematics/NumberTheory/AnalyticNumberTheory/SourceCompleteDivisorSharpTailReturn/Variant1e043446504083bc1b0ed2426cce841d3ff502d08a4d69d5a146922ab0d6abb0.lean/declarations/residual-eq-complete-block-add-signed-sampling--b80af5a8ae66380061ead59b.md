# residual_eq_complete_block_add_signed_sampling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3dd47fc-5837-56d2-d8d8-ada8c85af9fd",
  "kind": "theorem",
  "lexical_name": "residual_eq_complete_block_add_signed_sampling",
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
  "slug": "residual-eq-complete-block-add-signed-sampling--b80af5a8ae66380061ead59b",
  "source": {
    "blob": "fa224aad1fe3d249647cefff38f2c0ab6c16aa70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant1e043446504083bc1b0ed2426cce841d3ff502d08a4d69d5a146922ab0d6abb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b80af5a8ae66380061ead59b394e4d37b962152395681a40db62c1ab53282f9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant1e043446504083bc1b0ed2426cce841d3ff502d08a4d69d5a146922ab0d6abb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3dd47fc-5837-56d2-d8d8-ada8c85af9fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_eq_complete_block_add_signed_sampling (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = completeSignedSamplingBlock A + signedShortSamplingCorrection A := by
  rw [residual_eq_complete_block_corrections A hA,
    finite_ledger_eq_diagonal_add_signed_sampling]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant1e043446504083bc1b0ed2426cce841d3ff502d08a4d69d5a146922ab0d6abb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorSharpTailReturn/Variant1e043446504083bc1b0ed2426cce841d3ff502d08a4d69d5a146922ab0d6abb0.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa224aad1fe3d249647cefff38f2c0ab6c16aa70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
