# geom_sum_pos_and_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ac8a6d2-4ee5-e5c4-991d-a63bf2e5c30e",
  "kind": "theorem",
  "lexical_name": "geom_sum_pos_and_lt_one",
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
  "slug": "geom-sum-pos-and-lt-one--8eae8c751ce67bb1ba059860",
  "source": {
    "blob": "5f5c350c832d77e1042ffbc62a6358ef019e759b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 463,
    "path": "GRWTSK/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eae8c751ce67bb1ba05986011f61fbd83a576843905c174964e73e357426ed6",
  "verification": {
    "reference": "docs/verification/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ac8a6d2-4ee5-e5c4-991d-a63bf2e5c30e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_sum_pos_and_lt_one [StrictOrderedRing α] (hx : x < 0) (hx' : 0 < x + 1) (hn : 1 < n) :
    (0 < ∑ i in range n, x ^ i) ∧ ∑ i in range n, x ^ i < 1 := by
  refine' Nat.le_induction _ _ n (show 2 ≤ n from hn)
  · rw [geom_sum_two]
    exact ⟨hx', (add_lt_iff_neg_right _).2 hx⟩
  clear hn
  intro n _ ihn
  rw [geom_sum_succ, add_lt_iff_neg_right, ← neg_lt_iff_pos_add', neg_mul_eq_neg_mul]
  exact
    ⟨mul_lt_one_of_nonneg_of_lt_one_left (neg_nonneg.2 hx.le) (neg_lt_iff_pos_add'.2 hx') ihn.2.le,
      mul_neg_of_neg_of_pos hx ihn.1⟩
#align geom_sum_pos_and_lt_one geom_sum_pos_and_lt_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5c350c832d77e1042ffbc62a6358ef019e759b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
