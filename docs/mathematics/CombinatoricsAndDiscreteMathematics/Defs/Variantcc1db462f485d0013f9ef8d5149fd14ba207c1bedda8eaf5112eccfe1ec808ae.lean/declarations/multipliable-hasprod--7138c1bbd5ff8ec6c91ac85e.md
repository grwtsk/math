# Multipliable.hasProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b14a15efd33bc3b47a7872b78d4f155c9bfa2660",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d920ce2-eb69-d744-7046-9615c3b0c9dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a15ace63-bd15-7910-78e1-9984458bc938",
  "kind": "theorem",
  "lexical_name": "Multipliable.hasProd",
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
  "slug": "multipliable-hasprod--7138c1bbd5ff8ec6c91ac85e",
  "source": {
    "blob": "b14a15efd33bc3b47a7872b78d4f155c9bfa2660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 308,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7138c1bbd5ff8ec6c91ac85e51a5d342c18cfc4138d82a42c51f23f6bc953865",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a15ace63-bd15-7910-78e1-9984458bc938`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Multipliable.hasProd (ha : Multipliable f L) : HasProd f (∏'[L] b, f b) L := by
  -- This is quite delicate because of the fiddly special-casing for finite products.
  classical
  rw [tprod_def, dite_eq_left ha]
  split_ifs with h h'
  · convert! hasProd_prod_support_of_ne_finset_one (s := h.2.toFinset) (L := L) _ using 2
    · simp only [Set.inter_eq_left.mpr (show ↑h.2.toFinset ⊆ L.support by simp)]
      simp only [Set.Finite.coe_toFinset, Finset.toFinset_coe]
      rw [finprod_eq_prod_of_mulSupport_subset (s := h.2.toFinset)]
      · exact Finset.prod_congr rfl (by simp_all)
      · simp
    · grind [Set.Finite.mem_toFinset, mem_mulSupport]
    · exact h.1
  · exact h'
  · exact ha.choose_spec

variable [T2Space α] [L.NeBot]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b14a15efd33bc3b47a7872b78d4f155c9bfa2660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
