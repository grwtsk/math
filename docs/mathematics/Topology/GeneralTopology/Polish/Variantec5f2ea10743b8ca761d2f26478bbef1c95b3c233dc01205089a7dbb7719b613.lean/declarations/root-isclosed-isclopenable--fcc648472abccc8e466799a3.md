# _root_.IsClosed.isClopenable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5cacd501a6364845afe21e6ef015eb4bc3e9c46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be55cae0-c512-4741-9333-183758177ef9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcda9751-a6d4-253e-2365-8aba7fa1f6f8",
  "kind": "theorem",
  "lexical_name": "_root_.IsClosed.isClopenable",
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
  "slug": "root-isclosed-isclopenable--fcc648472abccc8e466799a3",
  "source": {
    "blob": "d5cacd501a6364845afe21e6ef015eb4bc3e9c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 275,
    "path": "GRWTSK/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcc648472abccc8e466799a3ac145232ca584c9a0da365266a0c15637875c054",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcda9751-a6d4-253e-2365-8aba7fa1f6f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsClosed.isClopenable [TopologicalSpace α] [PolishSpace α] {s : Set α}
    (hs : IsClosed s) : IsClopenable s := by
  /- Both sets `s` and `sᶜ` admit a Polish topology. So does their disjoint union `s ⊕ sᶜ`.
    Pulling back this topology by the canonical bijection with `α` gives the desired Polish
    topology in which `s` is both open and closed. -/
  classical
  haveI : PolishSpace s := hs.polishSpace
  let t : Set α := sᶜ
  haveI : PolishSpace t := hs.isOpen_compl.polishSpace
  let f : s ⊕ t ≃ α := Equiv.Set.sumCompl s
  have hle : TopologicalSpace.coinduced f instTopologicalSpaceSum ≤ ‹_› := by
    simp only [instTopologicalSpaceSum, coinduced_sup, coinduced_compose, sup_le_iff,
      ← continuous_iff_coinduced_le]
    exact ⟨continuous_subtype_val, continuous_subtype_val⟩
  refine ⟨.coinduced f instTopologicalSpaceSum, hle, ?_, hs.mono hle, ?_⟩
  · rw [← f.induced_symm]
    exact f.symm.polishSpace_induced
  · rw [isOpen_coinduced, isOpen_sum_iff]
    simp only [preimage_preimage, f]
    have inl (x : s) : (Equiv.Set.sumCompl s) (Sum.inl x) = x := Equiv.Set.sumCompl_apply_inl ..
    have inr (x : ↑sᶜ) : (Equiv.Set.sumCompl s) (Sum.inr x) = x := Equiv.Set.sumCompl_apply_inr ..
    simp_rw [t, inl, inr, Subtype.coe_preimage_self]
    simp only [isOpen_univ, true_and]
    rw [Subtype.preimage_coe_compl']
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Polish/Variantec5f2ea10743b8ca761d2f26478bbef1c95b3c233dc01205089a7dbb7719b613.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5cacd501a6364845afe21e6ef015eb4bc3e9c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
