# frequently_lt_rpow_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1e7add2-8f7a-6421-4ab0-f9d01876efb3",
  "kind": "theorem",
  "lexical_name": "frequently_lt_rpow_neg",
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
  "slug": "frequently-lt-rpow-neg--67ab97c58c18dd5454638fe7",
  "source": {
    "blob": "8eaa0268978e44ebd8e6dff557bcde313a85b349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ab97c58c18dd5454638fe744ef2721a475df56690a2657d9bb0ad6c2a6cbbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1e7add2-8f7a-6421-4ab0-f9d01876efb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_lt_rpow_neg (h : LiouvilleWith p x) (hlt : q < p) :
    ∃ᶠ n : ℕ in atTop, ∃ m : ℤ, x ≠ m / n ∧ |x - m / n| < n ^ (-q) := by
  rcases h.exists_pos with ⟨C, _hC₀, hC⟩
  have : ∀ᶠ n : ℕ in atTop, C < n ^ (p - q) := by
    simpa only [(· ∘ ·), neg_sub, one_div] using
      ((tendsto_rpow_atTop (sub_pos.2 hlt)).comp tendsto_nat_cast_atTop_atTop).eventually
        (eventually_gt_atTop C)
  refine (this.and_frequently hC).mono ?_
  rintro n ⟨hnC, hn, m, hne, hlt⟩
  replace hn : (0 : ℝ) < n := Nat.cast_pos.2 hn
  refine ⟨m, hne, hlt.trans <| (div_lt_iff <| rpow_pos_of_pos hn _).2 ?_⟩
  rwa [mul_comm, ← rpow_add hn, ← sub_eq_add_neg]
#align liouville_with.frequently_lt_rpow_neg LiouvilleWith.frequently_lt_rpow_neg

/-- The product of a Liouville number and a nonzero rational number is again a Liouville number.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant50f1c587b5c3bc3c43d06a4c6d4e59c647d60af6af825000d07705084bacc405.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eaa0268978e44ebd8e6dff557bcde313a85b349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
