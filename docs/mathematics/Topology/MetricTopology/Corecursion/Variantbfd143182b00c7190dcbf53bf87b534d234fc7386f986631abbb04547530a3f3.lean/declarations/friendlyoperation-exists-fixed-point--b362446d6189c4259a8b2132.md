# FriendlyOperation.exists_fixed_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cde83d4f-ff49-05a6-78f2-5109f85e2ac0",
  "kind": "theorem",
  "lexical_name": "FriendlyOperation.exists_fixed_point",
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
  "slug": "friendlyoperation-exists-fixed-point--b362446d6189c4259a8b2132",
  "source": {
    "blob": "aaca1e94fc40afade93caf4ad11cbdcd37ac682b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 247,
    "path": "GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b362446d6189c4259a8b213244024698905f1551936dc090da5547439e483ef7",
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

Occurrence: `result:cde83d4f-ff49-05a6-78f2-5109f85e2ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FriendlyOperation.exists_fixed_point (F : β → Option (α × γ × β)) (op : γ → Seq α → Seq α)
    [h : FriendlyOperationClass op] :
    ∃ f : β → Seq α, ∀ b : β,
    match F b with
    | none => f b = nil
    | some (a, c, b') => f b = Seq.cons a (op c (f b')) := by
  let T : (β →ᵤ Seq α) → (β →ᵤ Seq α) := fun f b =>
    match F b with
    | none => nil
    | some (a, c, b') => Seq.cons a (op c (f b'))
  have hT : LipschitzWith 2⁻¹ T := by
    rw [lipschitzWith_iff_dist_le_mul]
    intro f g
    rw [UniformFun.dist_le (by positivity)]
    intro b
    simp only [UniformFun.toFun, UniformFun.ofFun, Equiv.coe_fn_symm_mk, NNReal.coe_inv,
      NNReal.coe_ofNat, T]
    cases F b with
    | none => simp
    | some v =>
      obtain ⟨a, c, b'⟩ := v
      simp
      calc
        _ ≤ dist (f b') (g b') := by
          have := h.friend c
          rw [FriendlyOperation, lipschitzWith_iff_dist_le_mul] at this
          specialize this (f b') (g b')
          simpa using this
        _ ≤ _ := by
          simp only [UniformFun.dist_def]
          apply le_ciSup (f := fun b ↦ dist (f b) (g b))
          have : ∃ C, ∀ (a b : Seq α), dist a b ≤ C := by
            rw [← Metric.boundedSpace_iff]
            infer_instance
          obtain ⟨C, hC⟩ := this
          use C
          simp [upperBounds]
          grind
  obtain ⟨f, hf⟩ := exists_fixed_point_of_contractible T hT
  use f
  intro b
  rw [← hf]
  simp only [T]
  cases hb : F b with
  | none =>
    simp
  | some v =>
    obtain ⟨a, c, b'⟩ := v
    simp only [cons_eq_cons, true_and]
    congr
    change f b' = T f b'
    rw [hf]

/-- (General) non-primitive corecursor for `Seq α` that allows using a friendly operation in the
tail of the corecursive definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaca1e94fc40afade93caf4ad11cbdcd37ac682b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
