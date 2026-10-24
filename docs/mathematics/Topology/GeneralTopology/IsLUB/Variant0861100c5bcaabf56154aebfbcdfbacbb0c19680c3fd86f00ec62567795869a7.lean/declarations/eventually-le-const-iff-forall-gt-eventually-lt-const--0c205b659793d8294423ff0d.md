# eventually_le_const_iff_forall_gt_eventually_lt_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2023e07-2cbc-a8c6-2592-63e6315e359e",
  "kind": "theorem",
  "lexical_name": "eventually_le_const_iff_forall_gt_eventually_lt_const",
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
  "slug": "eventually-le-const-iff-forall-gt-eventually-lt-const--0c205b659793d8294423ff0d",
  "source": {
    "blob": "fb02c1be7a0438ffdde87cc516acc06c3a5b73bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 448,
    "path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c205b659793d8294423ff0d741cde06af944cdb87f9d7ac5ffbe3831fd8c46e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2023e07-2cbc-a8c6-2592-63e6315e359e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_le_const_iff_forall_gt_eventually_lt_const [FirstCountableTopology α]
    {l : Filter γ} [CountableInterFilter l] {f : γ → α} {a : α} :
    (∀ᶠ x in l, f x ≤ a) ↔ ∀ b, a < b → ∀ᶠ x in l, f x < b where
  mp h c hbc := h.mono <| fun x hx ↦ lt_of_le_of_lt hx hbc
  mpr h := by
    rcases exists_glb_Ioi a with ⟨d, hd⟩
    obtain rfl | H0 := glb_Ioi_eq_self_or_Ioi_eq_Ici _ hd
    · obtain h | _ := isTop_or_exists_gt d
      · exact .of_forall (fun _ ↦ h _)
      obtain ⟨u, -, -, hu_tt, hu_gt⟩ := hd.exists_seq_antitone_tendsto (by simpa)
      replace h := fun n ↦ h (u n) (by grind)
      rw [← eventually_countable_forall] at h
      filter_upwards [h] with x hx
      exact ge_of_tendsto hu_tt <| .of_forall <| fun n ↦ le_of_lt <| hx n
    · specialize h d <| by simp [← Set.mem_Ioi, H0]
      filter_upwards [h] with x hx
      rw [← Set.compl_Iic, ← Set.compl_Iio, compl_inj_iff] at H0
      simpa [← Set.mem_Iic, ← Set.mem_Iio, H0] using hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb02c1be7a0438ffdde87cc516acc06c3a5b73bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
