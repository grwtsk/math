# scottContinuous_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feebd47f-1dc8-0fee-efe1-b39a34b7ef85",
  "kind": "theorem",
  "lexical_name": "scottContinuous_of_continuous",
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
  "slug": "scottcontinuous-of-continuous--ce8fb8604f0dd763be3f1671",
  "source": {
    "blob": "9360ba2bbc3cc38d043701fbb960249ebefea568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8fb8604f0dd763be3f167135a6236c0b14dd3e9324b643346786d302f6a6b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feebd47f-1dc8-0fee-efe1-b39a34b7ef85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scottContinuous_of_continuous {α β} [OmegaCompletePartialOrder α]
    [OmegaCompletePartialOrder β] (f : Scott α → Scott β) (hf : _root_.Continuous f) :
    OmegaCompletePartialOrder.ωScottContinuous f := by
  rw [ωScottContinuous_iff_monotone_map_ωSup]
  have h : Monotone f := fun x y h ↦ by
    have hf : IsUpperSet {x | ¬f x ≤ f y} := ((notBelow_isOpen (f y)).preimage hf).isUpperSet
    simpa only [mem_setOf_eq, le_refl, not_true, imp_false, not_not] using hf h
  refine ⟨h, fun c ↦ eq_of_forall_ge_iff fun z ↦ ?_⟩
  rcases (notBelow_isOpen z).preimage hf with hf''
  let hf' := hf''.monotone_map_ωSup.2
  specialize hf' c
  simp only [OrderHom.coe_mk, mem_preimage, notBelow, mem_setOf_eq] at hf'
  rw [← not_iff_not]
  simp only [ωSup_le_iff, hf', ωSup, iSup, sSup, mem_range, Chain.map_coe, Function.comp_apply,
    eq_iff_iff, not_forall, OrderHom.coe_mk]
  tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9360ba2bbc3cc38d043701fbb960249ebefea568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
