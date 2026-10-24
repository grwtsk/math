# exists_preirreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3297ce65-8fa3-e609-e304-99e781f1b56a",
  "kind": "theorem",
  "lexical_name": "exists_preirreducible",
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
  "slug": "exists-preirreducible--48bfe8bd62760320f201bebb",
  "source": {
    "blob": "f5e0367211eb19de17f150b351bf3e9f89559257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1784,
    "line": 1764,
    "path": "GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant4318abca47ad13850e660aa2ac86d5d188d59162743cecfbdac8e31cd7953fa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48bfe8bd62760320f201bebb32046a1dbf049892c3b79fc0a44ab86aee57d888",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SubsetProperties/Variant4318abca47ad13850e660aa2ac86d5d188d59162743cecfbdac8e31cd7953fa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3297ce65-8fa3-e609-e304-99e781f1b56a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1764–1784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_preirreducible (s : Set α) (H : IsPreirreducible s) :
    ∃ t : Set α, IsPreirreducible t ∧ s ⊆ t ∧ ∀ u, IsPreirreducible u → t ⊆ u → u = t :=
  let ⟨m, hm, hsm, hmm⟩ :=
    zorn_subset_nonempty { t : Set α | IsPreirreducible t }
      (fun c hc hcc _ =>
        ⟨⋃₀ c, fun u v hu hv ⟨y, hy, hyu⟩ ⟨z, hz, hzv⟩ =>
          let ⟨p, hpc, hyp⟩ := mem_sUnion.1 hy
          let ⟨q, hqc, hzq⟩ := mem_sUnion.1 hz
          Or.casesOn (hcc.total hpc hqc)
            (fun hpq : p ⊆ q =>
              let ⟨x, hxp, hxuv⟩ := hc hqc u v hu hv ⟨y, hpq hyp, hyu⟩ ⟨z, hzq, hzv⟩
              ⟨x, mem_sUnion_of_mem hxp hqc, hxuv⟩)
            fun hqp : q ⊆ p =>
            let ⟨x, hxp, hxuv⟩ := hc hpc u v hu hv ⟨y, hyp, hyu⟩ ⟨z, hqp hzq, hzv⟩
            ⟨x, mem_sUnion_of_mem hxp hpc, hxuv⟩,
          fun _ hxc => subset_sUnion_of_mem hxc⟩)
      s H
  ⟨m, hm, hsm, fun _u hu hmu => hmm _ hu hmu⟩
#align exists_preirreducible exists_preirreducible

/-- The set of irreducible components of a topological space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SubsetProperties/Variant4318abca47ad13850e660aa2ac86d5d188d59162743cecfbdac8e31cd7953fa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant4318abca47ad13850e660aa2ac86d5d188d59162743cecfbdac8e31cd7953fa0.lean#L1764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5e0367211eb19de17f150b351bf3e9f89559257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
