# disjoint_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ad7c374-7758-703a-6398-991cb5e56b1f",
  "kind": "theorem",
  "lexical_name": "disjoint_left",
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
  "slug": "disjoint-left--cbcf3d62238891ef37e18255",
  "source": {
    "blob": "63fbbd6e5dfd9137a0bfd92929c995d853dc05ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/UnionInter/Variantb48280b7e8af513f3aa1ce3fad7b1cbd890992ba6801875e0b263593bc4d54f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbcf3d62238891ef37e1825530729a29c394dff64bf088ffbd4b7c17324a3bd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/UnionInter/Variantb48280b7e8af513f3aa1ce3fad7b1cbd890992ba6801875e0b263593bc4d54f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad7c374-7758-703a-6398-991cb5e56b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_left {s t : Multiset α} : Disjoint s t ↔ ∀ {a}, a ∈ s → a ∉ t := by
  refine ⟨fun h a hs ht ↦ ?_, fun h u hs ht ↦ ?_⟩
  · simpa using h (singleton_le.mpr hs) (singleton_le.mpr ht)
  · rw [le_bot_iff, bot_eq_zero, eq_zero_iff_forall_notMem]
    exact fun a ha ↦ h (subset_of_le hs ha) (subset_of_le ht ha)

alias ⟨_root_.Disjoint.notMem_of_mem_left_multiset, _⟩ := disjoint_left

@[deprecated (since := "2025-05-23")]
alias _root_.Disjoint.not_mem_of_mem_left_multiset := Disjoint.notMem_of_mem_left_multiset

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/UnionInter/Variantb48280b7e8af513f3aa1ce3fad7b1cbd890992ba6801875e0b263593bc4d54f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/UnionInter/Variantb48280b7e8af513f3aa1ce3fad7b1cbd890992ba6801875e0b263593bc4d54f3.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63fbbd6e5dfd9137a0bfd92929c995d853dc05ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
