# FriendlyOperation.coind_comp_friend_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ed85e01-5dad-66b2-76dd-3d51279788f0",
  "kind": "theorem",
  "lexical_name": "FriendlyOperation.coind_comp_friend_left",
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
  "slug": "friendlyoperation-coind-comp-friend-left--31ad7248abb5bf01880a09cf",
  "source": {
    "blob": "aaca1e94fc40afade93caf4ad11cbdcd37ac682b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 465,
    "path": "GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31ad7248abb5bf01880a09cf66be2a54726887a2356f287ece7208d4d0eea862",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ed85e01-5dad-66b2-76dd-3d51279788f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FriendlyOperation.coind_comp_friend_left {op : Seq α → Seq α}
    (motive : (Seq α → Seq α) → Prop)
    (h_base : motive op)
    (h_step : ∀ op, motive op →
      ∃ T : Option α → Option (α × Subtype FriendlyOperation × Subtype motive),
      ∀ s, (op s).destruct = (T s.head).map fun (hd, opf, op') => (hd, opf.val <| op'.val s.tail)) :
    FriendlyOperation op := by
  let motive' (op : Seq α → Seq α) : Prop :=
    ∃ opf op', op = opf ∘ op' ∧ FriendlyOperation opf ∧ motive op'
  apply FriendlyOperation.coind motive'
  · exact ⟨_root_.id, op, rfl, FriendlyOperation.id, h_base⟩
  rintro _ ⟨opf, op, rfl, h_opf, h_op⟩
  obtain ⟨T, hT⟩ := h_step _ h_op
  use fun hd? ↦
    match (T hd?) with
    | none => (h_opf.unfold none).map fun (hd, opf') =>
      (hd, ⟨_, fun _ ↦ opf'.val nil, op, rfl, FriendlyOperation.const, h_op⟩)
    | some (hd, opf', op') => (h_opf.unfold (some hd)).map fun (hd', opf'') =>
      (hd', ⟨_, opf''.val ∘ opf'.val, op'.val, rfl,
        FriendlyOperation.comp opf''.prop opf'.prop, op'.prop⟩)
  intro s
  specialize hT s
  simp only [Function.comp_apply]
  generalize op s = s' at *
  cases s' with
  | nil =>
    symm at hT
    simp at hT
    simp [hT, destruct_apply_eq_unfold h_opf]
    rfl
  | cons s_hd s_tl =>
    simp only [destruct_cons] at hT
    simp only [destruct_apply_eq_unfold h_opf, Seq.tail_cons, Seq.head_cons]
    generalize T s.head = t? at *
    cases t? with
    | none => simp at hT
    | some v =>
      obtain ⟨hd, opf', op'⟩ := v
      simp at hT
      simp [hT]
      rfl

set_option backward.isDefEq.respectTransparency false in
/-- A generalisation of `FriendlyOperation.coind` that allows using `op' ∘ opf` in the tail
of `op s` where `opf` is friendly and `op'` is a function satisfying `motive`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaca1e94fc40afade93caf4ad11cbdcd37ac682b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
