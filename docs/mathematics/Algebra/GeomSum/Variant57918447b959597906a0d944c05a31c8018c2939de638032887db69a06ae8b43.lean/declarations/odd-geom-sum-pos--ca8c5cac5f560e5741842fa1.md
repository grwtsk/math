# Odd.geom_sum_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db6db1e4-a88b-1099-2864-82917c6e9ae7",
  "kind": "theorem",
  "lexical_name": "Odd.geom_sum_pos",
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
  "slug": "odd-geom-sum-pos--ca8c5cac5f560e5741842fa1",
  "source": {
    "blob": "5f5c350c832d77e1042ffbc62a6358ef019e759b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 522,
    "path": "GRWTSK/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca8c5cac5f560e5741842fa17b535db60949516e5c0d701765f812664da0625c",
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

Occurrence: `result:db6db1e4-a88b-1099-2864-82917c6e9ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Odd.geom_sum_pos [LinearOrderedRing α] (h : Odd n) : 0 < ∑ i in range n, x ^ i := by
  rcases n with (_ | _ | k)
  · exact ((show ¬Odd 0 by decide) h).elim
  · simp only [Nat.zero_eq, ← Nat.one_eq_succ_zero, geom_sum_one, zero_lt_one]
  rw [Nat.odd_iff_not_even] at h
  rcases lt_trichotomy (x + 1) 0 with (hx | hx | hx)
  · have := geom_sum_alternating_of_lt_neg_one hx k.one_lt_succ_succ
    simp only [h, if_false] at this
    exact zero_lt_one.trans this
  · simp only [eq_neg_of_add_eq_zero_left hx, h, neg_one_geom_sum, if_false, zero_lt_one]
  · exact geom_sum_pos' hx k.succ.succ_ne_zero
#align odd.geom_sum_pos Odd.geom_sum_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f5c350c832d77e1042ffbc62a6358ef019e759b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
