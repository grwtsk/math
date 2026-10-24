# sum_floor_add_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f39a32a5-390d-2efb-c01a-28bbeef2d105",
  "kind": "theorem",
  "lexical_name": "sum_floor_add_div",
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
  "slug": "sum-floor-add-div--79216d5f70dc1658ac0b4427",
  "source": {
    "blob": "13850d649a7fb852d0dab1fe1e219bdec2f54302",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/Algebra/BigOperators/Variant98cbc9f08d26d46682ec8f2973becd9fe6eecc8430fd4aca5856bb084a4c44b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79216d5f70dc1658ac0b4427d41bbb10307be83bca7865746358e77f6e7216d4",
  "verification": {
    "reference": "docs/verification/Algebra/BigOperators/Variant98cbc9f08d26d46682ec8f2973becd9fe6eecc8430fd4aca5856bb084a4c44b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f39a32a5-390d-2efb-c01a-28bbeef2d105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem sum_floor_add_div
    {α : Type*} [Field α] [LinearOrder α] [IsOrderedRing α] [FloorRing α] (x : α) (n : ℕ) :
    ∑ i ∈ Finset.range n, ⌊x + i / n⌋ = ⌊n * x⌋ := by
  rcases Nat.eq_zero_or_pos n with rfl | hn; · simp
  calc
    _ = ∑ i ∈ Finset.range n, (⌊(n : α) * x⌋ + (i : ℤ)) / (n : ℤ) :=
        Finset.sum_congr rfl fun i _ ↦ by rw [← floor_add_natCast, ← floor_div_natCast]; field_simp
    _ = ⌊(n : α) * x⌋ := sum_range_add_ediv _ hn

end Int
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BigOperators/Variant98cbc9f08d26d46682ec8f2973becd9fe6eecc8430fd4aca5856bb084a4c44b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BigOperators/Variant98cbc9f08d26d46682ec8f2973becd9fe6eecc8430fd4aca5856bb084a4c44b2.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13850d649a7fb852d0dab1fe1e219bdec2f54302` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
