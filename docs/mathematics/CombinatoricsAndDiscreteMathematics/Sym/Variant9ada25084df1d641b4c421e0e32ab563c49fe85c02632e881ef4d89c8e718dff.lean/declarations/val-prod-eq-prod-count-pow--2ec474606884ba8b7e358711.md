# val_prod_eq_prod_count_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:319feef3-d17f-2971-1821-56e662321cc0",
  "kind": "theorem",
  "lexical_name": "val_prod_eq_prod_count_pow",
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
  "slug": "val-prod-eq-prod-count-pow--2ec474606884ba8b7e358711",
  "source": {
    "blob": "76712af7eb7831c516f1b74b11e81e6c201bf5b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant9ada25084df1d641b4c421e0e32ab563c49fe85c02632e881ef4d89c8e718dff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ec474606884ba8b7e3587112db09d4a179e27a44d50183ea4e968a9e99ccbea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sym/Variant9ada25084df1d641b4c421e0e32ab563c49fe85c02632e881ef4d89c8e718dff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:319feef3-d17f-2971-1821-56e662321cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem val_prod_eq_prod_count_pow [CommMonoid α] {n : ℕ} {k : Sym α n}
    {s : Finset α} (hk : k ∈ s.sym n) :
    k.val.prod = ∏ d ∈ s, d ^ Multiset.count d k := by
  rw [Finset.prod_multiset_count_of_subset _ s]
  · apply Finset.prod_congr rfl (by simp)
  intro x hx
  simp only [Sym.val_eq_coe, Multiset.mem_toFinset, Sym.mem_coe] at hx
  simp only [Finset.mem_sym_iff] at hk
  exact hk x hx

end Sym

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sym/Variant9ada25084df1d641b4c421e0e32ab563c49fe85c02632e881ef4d89c8e718dff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sym/Variant9ada25084df1d641b4c421e0e32ab563c49fe85c02632e881ef4d89c8e718dff.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76712af7eb7831c516f1b74b11e81e6c201bf5b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
