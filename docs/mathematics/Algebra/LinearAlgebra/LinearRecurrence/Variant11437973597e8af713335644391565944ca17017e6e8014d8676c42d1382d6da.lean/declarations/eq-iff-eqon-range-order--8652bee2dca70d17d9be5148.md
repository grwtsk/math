# eq_iff_eqOn_range_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24ac52b6-b51c-ddd9-bc1d-f8546cf3f950",
  "kind": "theorem",
  "lexical_name": "eq_iff_eqOn_range_order",
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
  "slug": "eq-iff-eqon-range-order--8652bee2dca70d17d9be5148",
  "source": {
    "blob": "5359021d8dee3f368b916a4fc13493adadfe52fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 169,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8652bee2dca70d17d9be514878b5f36c33a63a56c591a3ac2dced21dc0ae6fad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24ac52b6-b51c-ddd9-bc1d-f8546cf3f950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_iff_eqOn_range_order (u v : ℕ → R) (hu : E.IsSolution u) (hv : E.IsSolution v) :
    u = v ↔ Set.EqOn u v ↑(range E.order) := by
  replace hu : u ∈ E.solSpace := (is_sol_iff_mem_solSpace _ _).mp hu
  replace hv : v ∈ E.solSpace := (is_sol_iff_mem_solSpace _ _).mp hv
  rw [← Subtype.mk.injEq u hu v hv, ← E.basis.repr.injective.eq_iff]
  constructor
  · exact fun h n hn ↦ congr($h ⟨n, Finset.mem_range.mp hn⟩)
  · exact fun h ↦ Finsupp.ext fun n ↦ h <| Finset.mem_range.mpr n.prop

@[deprecated (since := "2026-04-16")] alias sol_eq_of_eq_init := eq_iff_eqOn_range_order

/-! `E.tupleSucc` maps `![s₀, s₁, ..., sₙ]` to `![s₁, ..., sₙ, ∑ (E.coeffs i) * sᵢ]`,
where `n := E.order`. This operation is quite useful for determining closed-form
solutions of `E`. -/

/-- `E.tupleSucc` maps `![s₀, s₁, ..., sₙ]` to `![s₁, ..., sₙ, ∑ (E.coeffs i) * sᵢ]`,
where `n := E.order`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant11437973597e8af713335644391565944ca17017e6e8014d8676c42d1382d6da.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5359021d8dee3f368b916a4fc13493adadfe52fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
