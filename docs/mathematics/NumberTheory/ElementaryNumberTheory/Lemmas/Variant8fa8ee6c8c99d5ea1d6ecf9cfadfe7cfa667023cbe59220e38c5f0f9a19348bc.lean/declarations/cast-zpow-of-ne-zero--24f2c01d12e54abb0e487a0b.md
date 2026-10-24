# cast_zpow_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6f85cb9-e32c-20cb-c33c-1bcdc674ae16",
  "kind": "theorem",
  "lexical_name": "cast_zpow_of_ne_zero",
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
  "slug": "cast-zpow-of-ne-zero--24f2c01d12e54abb0e487a0b",
  "source": {
    "blob": "f3c76238c61f09776c780581707348ccd7e97037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24f2c01d12e54abb0e487a0b6cd89f33759bd840f21c29371115378f070c0024",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6f85cb9-e32c-20cb-c33c-1bcdc674ae16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_zpow_of_ne_zero {K} [DivisionSemiring K] (q : ℚ≥0) (z : ℤ) (hq : (q.num : K) ≠ 0) :
    NNRat.cast (q ^ z) = (NNRat.cast q : K) ^ z := by
  obtain ⟨n, rfl | rfl⟩ := z.eq_nat_or_neg
  · simp
  · simp_rw [zpow_neg, zpow_natCast, ← inv_pow, NNRat.cast_pow]
    congr
    rw [cast_inv_of_ne_zero hq]

open OfScientific in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3c76238c61f09776c780581707348ccd7e97037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
