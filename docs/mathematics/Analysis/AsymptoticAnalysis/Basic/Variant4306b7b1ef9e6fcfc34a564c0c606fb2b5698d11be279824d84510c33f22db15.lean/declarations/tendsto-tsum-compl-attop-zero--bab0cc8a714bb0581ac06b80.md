# tendsto_tsum_compl_atTop_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90a6a026-a34e-d7f2-17ed-a082ef701e5b",
  "kind": "theorem",
  "lexical_name": "tendsto_tsum_compl_atTop_zero",
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
  "slug": "tendsto-tsum-compl-attop-zero--bab0cc8a714bb0581ac06b80",
  "source": {
    "blob": "f78c46547d30237abb1148ec1ac7495a4b28f744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1161,
    "line": 1136,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4306b7b1ef9e6fcfc34a564c0c606fb2b5698d11be279824d84510c33f22db15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bab0cc8a714bb0581ac06b804a6ef89d7de971cf5e4627f1c324f5932c366dce",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant4306b7b1ef9e6fcfc34a564c0c606fb2b5698d11be279824d84510c33f22db15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90a6a026-a34e-d7f2-17ed-a082ef701e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1136–1161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_tsum_compl_atTop_zero (f : β → α) :
    Tendsto (fun s : Finset β => ∑' b : { x // x ∉ s }, f b) atTop (𝓝 0) := by
  by_cases H : Summable f
  · intro e he
    rcases exists_mem_nhds_isClosed_subset he with ⟨o, ho, o_closed, oe⟩
    simp only [le_eq_subset, Set.mem_preimage, mem_atTop_sets, Filter.mem_map, ge_iff_le]
    obtain ⟨s, hs⟩ : ∃ s : Finset β, ∀ t : Finset β, Disjoint t s → (∑ b : β in t, f b) ∈ o :=
      cauchySeq_finset_iff_vanishing.1 (Tendsto.cauchySeq H.hasSum) o ho
    refine' ⟨s, fun a sa => oe _⟩
    have A : Summable fun b : { x // x ∉ a } => f b := a.summable_compl_iff.2 H
    refine' IsClosed.mem_of_tendsto o_closed A.hasSum (eventually_of_forall fun b => _)
    have : Disjoint (Finset.image (fun i : { x // x ∉ a } => (i : β)) b) s := by
      refine' disjoint_left.2 fun i hi his => _
      rcases mem_image.1 hi with ⟨i', _, rfl⟩
      exact i'.2 (sa his)
    convert hs _ this using 1
    rw [sum_image]
    intro i _ j _ hij
    exact Subtype.ext hij
  · convert tendsto_const_nhds (α := α) (β := Finset β) (f := atTop) (a := 0)
    apply tsum_eq_zero_of_not_summable
    rwa [Finset.summable_compl_iff]
#align tendsto_tsum_compl_at_top_zero tendsto_tsum_compl_atTop_zero

variable [CompleteSpace α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant4306b7b1ef9e6fcfc34a564c0c606fb2b5698d11be279824d84510c33f22db15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4306b7b1ef9e6fcfc34a564c0c606fb2b5698d11be279824d84510c33f22db15.lean#L1136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f78c46547d30237abb1148ec1ac7495a4b28f744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
