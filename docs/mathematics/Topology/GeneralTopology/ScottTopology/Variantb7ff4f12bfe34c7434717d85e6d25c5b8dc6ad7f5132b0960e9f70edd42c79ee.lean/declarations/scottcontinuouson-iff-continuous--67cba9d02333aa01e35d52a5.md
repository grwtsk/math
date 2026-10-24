# scottContinuousOn_iff_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06108d62-b890-11a6-879e-373c9c69e7c9",
  "kind": "lemma",
  "lexical_name": "scottContinuousOn_iff_continuous",
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
  "slug": "scottcontinuouson-iff-continuous--67cba9d02333aa01e35d52a5",
  "source": {
    "blob": "4a6d170ab3f18670812898173cd0806c7ad333ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67cba9d02333aa01e35d52a5e974c048c01cb91d97690aadaca9fa347e498d9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06108d62-b890-11a6-879e-373c9c69e7c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma scottContinuousOn_iff_continuous {D : Set (Set α)} [Topology.IsScott α D]
    (hD : ∀ a b : α, a ≤ b → {a, b} ∈ D) : ScottContinuousOn D f ↔ Continuous f := by
  refine ⟨fun h ↦ continuous_def.2 fun u hu ↦ ?_, ?_⟩
  · rw [isOpen_iff_isUpperSet_and_dirSupInaccOn (D := D)]
    exact ⟨(isUpperSet_of_isOpen (D := univ) hu).preimage (h.monotone D hD),
      fun t h₀ hd₁ hd₂ a hd₃ ha ↦ image_inter_nonempty_iff.mp <|
        (isOpen_iff_isUpperSet_and_dirSupInaccOn (D := univ).mp hu).2 trivial (Nonempty.image f hd₁)
        (directedOn_image.mpr (hd₂.mono @(h.monotone D hD))) (h h₀ hd₁ hd₂ hd₃) ha⟩
  · refine fun hf t h₀ d₁ d₂ a d₃ ↦
      ⟨(monotone_of_continuous (D := D) hf).mem_upperBounds_image d₃.1,
      fun b hb ↦ ?_⟩
    by_contra h
    let u := (Iic b)ᶜ
    have hu : IsOpen (f ⁻¹' u) := isClosed_Iic.isOpen_compl.preimage hf
    rw [isOpen_iff_isUpperSet_and_dirSupInaccOn (D := D)] at hu
    obtain ⟨c, hcd, hfcb⟩ := hu.2 h₀ d₁ d₂ d₃ h
    simp only [upperBounds, mem_image, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂,
      mem_ofPred] at hb
    exact hfcb <| hb _ hcd

end Preorder

section PartialOrder
variable [PartialOrder α] [TopologicalSpace α] [IsScott α univ]

/--
The Scott topology on a partial order is T₀.
-/
-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6d170ab3f18670812898173cd0806c7ad333ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
