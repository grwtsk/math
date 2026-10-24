# exists_continuous_forall_mem_convex_of_local

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1c49ddf-0b63-d4c1-3ee7-2cfe162c0669",
  "kind": "theorem",
  "lexical_name": "exists_continuous_forall_mem_convex_of_local",
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
  "slug": "exists-continuous-forall-mem-convex-of-local--7bf2c9e4784686b1b9dfae74",
  "source": {
    "blob": "10f2592a49b27d733c82db2de566bfd823920f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 60,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant1198c8f47b4e95671539a729619bd55a30c7b0cc13017bf24cbfd4a76a9ce190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bf2c9e4784686b1b9dfae74d9581038fed7997c40b6dc0942bc015092fe9e81",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant1198c8f47b4e95671539a729619bd55a30c7b0cc13017bf24cbfd4a76a9ce190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1c49ddf-0b63-d4c1-3ee7-2cfe162c0669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuous_forall_mem_convex_of_local (ht : ∀ x, Convex ℝ (t x))
    (H : ∀ x : X, ∃ U ∈ 𝓝 x, ∃ g : X → E, ContinuousOn g U ∧ ∀ y ∈ U, g y ∈ t y) :
    ∃ g : C(X, E), ∀ x, g x ∈ t x := by
  choose U hU g hgc hgt using H
  obtain ⟨f, hf⟩ := PartitionOfUnity.exists_isSubordinate isClosed_univ (fun x => interior (U x))
    (fun x => isOpen_interior) fun x _ => mem_iUnion.2 ⟨x, mem_interior_iff_mem_nhds.2 (hU x)⟩
  refine ⟨⟨fun x => ∑ᶠ i, f i x • g i x,
    hf.continuous_finsum_smul (fun i => isOpen_interior) fun i => (hgc i).mono interior_subset⟩,
    fun x => f.finsum_smul_mem_convex (mem_univ x) (fun i hi => hgt _ _ ?_) (ht _)⟩
  exact interior_subset (hf _ <| subset_closure hi)

/-- Let `X` be a normal paracompact topological space (e.g., any extended metric space). Let `E` be
a topological real vector space. Let `t : X → Set E` be a family of convex sets. Suppose that for
each point `x : X`, there exists a vector `c : E` that belongs to `t y` for all `y` in a
neighborhood of `x`. Then there exists a continuous map `g : C(X, E)` such that `g x ∈ t x` for all
`x`. See also `exists_continuous_forall_mem_convex_of_local`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant1198c8f47b4e95671539a729619bd55a30c7b0cc13017bf24cbfd4a76a9ce190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PartitionOfUnity/Variant1198c8f47b4e95671539a729619bd55a30c7b0cc13017bf24cbfd4a76a9ce190.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10f2592a49b27d733c82db2de566bfd823920f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
