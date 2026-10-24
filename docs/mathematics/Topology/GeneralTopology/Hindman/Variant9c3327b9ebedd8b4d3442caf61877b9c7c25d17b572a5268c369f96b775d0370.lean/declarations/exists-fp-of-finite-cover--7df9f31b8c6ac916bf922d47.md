# exists_FP_of_finite_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d07c7bd-d701-4022-71d2-d8140a6e418a",
  "kind": "theorem",
  "lexical_name": "exists_FP_of_finite_cover",
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
  "slug": "exists-fp-of-finite-cover--7df9f31b8c6ac916bf922d47",
  "source": {
    "blob": "98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7df9f31b8c6ac916bf922d4794b98c43cd2cf725bb2b9475eec8b959c3fde166",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d07c7bd-d701-4022-71d2-d8140a6e418a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_FP_of_finite_cover {M} [Semigroup M] [Nonempty M] (s : Set (Set M)) (sfin : s.Finite)
    (scov : ⊤ ⊆ ⋃₀ s) : ∃ c ∈ s, ∃ a : Stream' M, ∀ m, FP a m → m ∈ c :=
  let ⟨U, hU⟩ :=
    exists_idempotent_of_compact_t2_of_continuous_mul_left (@Ultrafilter.continuous_mul_left M _)
  let ⟨c, c_s, hc⟩ := (Ultrafilter.finite_sUnion_mem_iff sfin).mp (mem_of_superset univ_mem scov)
  ⟨c, c_s, exists_FP_of_large U hU c hc⟩

@[to_additive FS_iter_tail_sub_FS]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
