# FriendlyOperation.coind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54a98694-fc34-2b2c-eaf2-4c3c67225e90",
  "kind": "theorem",
  "lexical_name": "FriendlyOperation.coind",
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
  "slug": "friendlyoperation-coind--459277fe82349b1eabafb960",
  "source": {
    "blob": "aaca1e94fc40afade93caf4ad11cbdcd37ac682b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 429,
    "path": "GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:459277fe82349b1eabafb960c90323c0b57f2c9b1f5954ad4f8b5b2a73ea20a6",
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

Occurrence: `result:54a98694-fc34-2b2c-eaf2-4c3c67225e90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FriendlyOperation.coind (motive : (Seq α → Seq α) → Prop)
    {op : Seq α → Seq α}
    (h_base : motive op)
    (h_step : ∀ op, motive op → ∃ T : Option α → Option (α × Subtype motive),
      ∀ s, (op s).destruct = (T s.head).map (fun (hd, op') => (hd, op'.val s.tail))) :
    FriendlyOperation op := by
  apply of_dist_le_pow
  intro s t n hn
  induction n generalizing op s t with
  | zero => simp
  | succ n ih =>
    obtain ⟨T, hT⟩ := h_step _ h_base
    have h_head : s.head = t.head := by
      replace hn : dist s t ≤ 2⁻¹ := by
        apply hn.trans
        simp only [pow_succ, inv_pos, Nat.ofNat_pos, mul_le_iff_le_one_left]
        apply pow_le_one₀ <;> norm_num
      rw [dist_le_half_iff] at hn
      obtain ⟨rfl, rfl⟩ | ⟨hd, s_tl, t_tl, rfl, rfl⟩ := hn <;> rfl
    have hs := hT s
    have ht := hT t
    cases hT_head : T s.head with
    | none =>
      simp only [hT_head, Option.map_none, ← h_head] at hs ht
      simp [hs, ht, destruct_eq_none]
    | some v =>
      obtain ⟨hd, op', h_next⟩ := v
      simp only [hT_head, Option.map_some, ← h_head] at hs ht
      simp only [destruct_eq_cons hs, destruct_eq_cons ht, dist_cons_cons, pow_succ', inv_pos,
        Nat.ofNat_pos, mul_le_mul_iff_right₀, ge_iff_le]
      apply ih h_next
      simpa [dist_eq_half_of_head h_head, pow_succ'] using hn

set_option backward.isDefEq.respectTransparency false in
/-- A generalisation of `FriendlyOperation.coind` which allows using `opf ∘ op'` in the tail
of `op s` where `opf` is friendly and `op'` is a function satisfying `motive`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaca1e94fc40afade93caf4ad11cbdcd37ac682b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
