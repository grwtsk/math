# FriendlyOperation.coind_comp_friend_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69e9b0ead301879ca23c34e52f2563846de24be0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1caf10ae-3fb5-f84b-5f43-7b816c6631ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13ddc2ed-5253-634a-455f-6fdeac0e1424",
  "kind": "theorem",
  "lexical_name": "FriendlyOperation.coind_comp_friend_right",
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
  "slug": "friendlyoperation-coind-comp-friend-right--99d68e6905e390d57568f504",
  "source": {
    "blob": "69e9b0ead301879ca23c34e52f2563846de24be0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 502,
    "path": "GRWTSK/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99d68e6905e390d57568f504a675f49372e4c0db0cfc51815741f82f847900d6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13ddc2ed-5253-634a-455f-6fdeac0e1424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FriendlyOperation.coind_comp_friend_right {op : Seq α → Seq α}
    (motive : (Seq α → Seq α) → Prop)
    (h_base : motive op)
    (h_step : ∀ op, motive op →
      ∃ T : Option α → Option (α × Subtype FriendlyOperation × Subtype motive),
      ∀ s, (op s).destruct = (T s.head).map fun (hd, opf, op') => (hd, op'.val <| opf.val s.tail)) :
    FriendlyOperation op := by
  let motive' (op : Seq α → Seq α) : Prop :=
    ∃ opf op', op = op' ∘ opf ∧ FriendlyOperation opf ∧ motive op'
  apply FriendlyOperation.coind motive'
  · exact ⟨_root_.id, op, rfl, FriendlyOperation.id, h_base⟩
  clear h_base op
  rintro _ ⟨opf, op, rfl, h_opf, h_op⟩
  obtain ⟨T, hT⟩ := h_step _ h_op
  use fun hd? ↦
    match (h_opf.unfold hd?) with
    | none => (T none).map fun (hd, opf', op') =>
      (hd, ⟨_, fun _ ↦ opf'.val nil, op', rfl, FriendlyOperation.const, op'.prop⟩)
    | some (hd, opf') => (T (some hd)).map fun (hd', opf'', op') =>
      (hd', ⟨_, opf''.val ∘ opf'.val, op'.val, rfl,
        FriendlyOperation.comp opf''.prop opf'.prop, op'.prop⟩)
  intro s
  simp only [Function.comp_apply]
  have hF := h_opf.destruct_apply_eq_unfold (s := s)
  generalize opf s = s' at *
  cases s' with
  | nil =>
    symm at hF
    simp only [destruct_nil, Option.map_eq_none_iff] at hF
    simp only [hF, Option.map_map]
    specialize hT nil
    simp only [tail_nil, head_nil] at hT
    simp [hT]
    rfl
  | cons s_hd s_tl =>
  simp only [destruct_cons] at hF
  generalize h_opf.unfold s.head = t? at *
  cases t? with
  | none => simp at hF
  | some v =>
  obtain ⟨hd, opf', op'⟩ := v
  simp only [Option.map_some, Option.some.injEq, Prod.mk.injEq] at hF
  simp only [hF, Option.map_map]
  rw [hT]
  rfl

/-- A generalisation of `Seq.eq_of_bisim'` that allows using a friendly operation in the tail
of the sequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e9b0ead301879ca23c34e52f2563846de24be0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
