# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.Pairwise.exists_mem_filter_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:add12a34-d876-b2c0-611b-67cb96572b7b",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.Pairwise.exists_mem_filter_of_disjoint",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-biintermem-variantb26d5f--bf6803dcf09a9d7e600f3e90",
  "source": {
    "blob": "93f8cffa6faaef3d47ff4938d16268a191cb2b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf6803dcf09a9d7e600f3e90b5d0bc5be9c66ef8589a09958231392183d50b3e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:add12a34-d876-b2c0-611b-67cb96572b7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.BiInterMem.Variantb26d5f2f5e115eb5733aef6a27f4607628921704d5e17c9935c2861733c44017.Pairwise.exists_mem_filter_of_disjoint {ι : Type*} [Finite ι] {l : ι → Filter α}
    (hd : Pairwise (Disjoint on l)) :
    ∃ s : ι → Set α, (∀ i, s i ∈ l i) ∧ Pairwise (Disjoint on s) := by
  have : Pairwise fun i j => ∃ (s : {s // s ∈ l i}) (t : {t // t ∈ l j}), Disjoint s.1 t.1 := by
    simpa only [Pairwise, Function.onFun, Filter.disjoint_iff, exists_prop, Subtype.exists] using hd
  choose! s t hst using this
  refine ⟨fun i => ⋂ j, @s i j ∩ @t j i, fun i => ?_, fun i j hij => ?_⟩
  exacts [iInter_mem.2 fun j => inter_mem (@s i j).2 (@t j i).2,
    (hst hij).mono ((iInter_subset _ j).trans inter_subset_left)
      ((iInter_subset _ i).trans inter_subset_right)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f8cffa6faaef3d47ff4938d16268a191cb2b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
