# exists_preirreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4de3a1d3-d9c8-86d1-3b89-0220a6685ec0",
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
  "slug": "exists-preirreducible--7af9764c7dc9b58e8aee8895",
  "source": {
    "blob": "1f7c0c0526985238db903b4bce3346d9f268de23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7af9764c7dc9b58e8aee8895c0e7e28ac35dc84d8cd8e7ec9e1cb3f1d25eb7f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4de3a1d3-d9c8-86d1-3b89-0220a6685ec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_preirreducible (s : Set X) (H : IsPreirreducible s) :
    ∃ t : Set X, IsPreirreducible t ∧ s ⊆ t ∧ ∀ u, IsPreirreducible u → t ⊆ u → u = t :=
  let ⟨m, hsm, hm⟩ :=
    zorn_subset_nonempty { t : Set X | IsPreirreducible t }
      (fun c hc hcc _ =>
        ⟨⋃₀ c, fun u v hu hv ⟨y, hy, hyu⟩ ⟨x, hx, hxv⟩ =>
          let ⟨p, hpc, hyp⟩ := mem_sUnion.1 hy
          let ⟨q, hqc, hxq⟩ := mem_sUnion.1 hx
          Or.casesOn (hcc.total hpc hqc)
            (fun hpq : p ⊆ q =>
              let ⟨x, hxp, hxuv⟩ := hc hqc u v hu hv ⟨y, hpq hyp, hyu⟩ ⟨x, hxq, hxv⟩
              ⟨x, mem_sUnion_of_mem hxp hqc, hxuv⟩)
            fun hqp : q ⊆ p =>
            let ⟨x, hxp, hxuv⟩ := hc hpc u v hu hv ⟨y, hyp, hyu⟩ ⟨x, hqp hxq, hxv⟩
            ⟨x, mem_sUnion_of_mem hxp hpc, hxuv⟩,
          fun _ hxc => subset_sUnion_of_mem hxc⟩)
      s H
  ⟨m, hm.prop, hsm, fun _u hu hmu => (hm.eq_of_subset hu hmu).symm⟩

/-- The set of irreducible components of a topological space. -/
@[stacks 004V "(2)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f7c0c0526985238db903b4bce3346d9f268de23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
