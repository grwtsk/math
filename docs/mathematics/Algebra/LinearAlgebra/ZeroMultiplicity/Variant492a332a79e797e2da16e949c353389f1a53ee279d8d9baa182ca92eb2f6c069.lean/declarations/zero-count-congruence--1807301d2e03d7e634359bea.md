# zero_count_congruence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a7d1616-4823-71a6-94ef-856e9b13c54f",
  "kind": "theorem",
  "lexical_name": "zero_count_congruence",
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
  "slug": "zero-count-congruence--1807301d2e03d7e634359bea",
  "source": {
    "blob": "71c4ac37d0781ccaaa08877557eb3b0d8c40324a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 35,
    "path": "GRWTSK/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1807301d2e03d7e634359bea0a29a0b274e2aa172246f79faa275a33975da612",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a7d1616-4823-71a6-94ef-856e9b13c54f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_count_congruence (M P : Matrix n n ℂ) (hM : M.IsHermitian)
    (hP : P.det ≠ 0) (hN : (Pᴴ * M * P).IsHermitian) :
    Fintype.card {i // hN.eigenvalues i = 0} =
      Fintype.card {i // hM.eigenvalues i = 0} := by
  rw [zero_count_eq_dim_sub_rank _ hN, zero_count_eq_dim_sub_rank _ hM,
    rank_congruence M P hP]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c4ac37d0781ccaaa08877557eb3b0d8c40324a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
