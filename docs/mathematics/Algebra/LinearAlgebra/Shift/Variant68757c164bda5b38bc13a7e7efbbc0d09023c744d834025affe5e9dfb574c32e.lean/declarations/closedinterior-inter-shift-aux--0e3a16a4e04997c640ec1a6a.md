# closedInterior_inter_shift_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb99ddeb-36e7-65c5-1483-7b0cb0454d04",
  "kind": "theorem",
  "lexical_name": "closedInterior_inter_shift_aux",
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
  "slug": "closedinterior-inter-shift-aux--0e3a16a4e04997c640ec1a6a",
  "source": {
    "blob": "631de5e102c49fb2f5e6a80323906c2318aab9c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 236,
    "path": "GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e3a16a4e04997c640ec1a6aa52d3c1761864fe40c91dbc962a2eaad16cb927d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb99ddeb-36e7-65c5-1483-7b0cb0454d04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem closedInterior_inter_shift_aux {n : ℕ} (i : Fin n) {x : k} (hxpos : 0 < x)
    (hx1 : x ≤ 1) {w : Fin n → k} (hw : ∑ i, w i = 1) :
    (∀ j, w j ∈ Set.Icc 0 1) ∧ w i = 1 - x ↔
    (∀ j, j ≠ i → x⁻¹ * w j ∈ Set.Icc 0 1) ∧ x⁻¹ * (w i - 1) + 1 = 0 := by
  rw [show x⁻¹ * (w i - 1) + 1 = 0 ↔ w i = 1 - x by grind]
  refine and_congr_left fun hi ↦ ⟨fun hj j hji ↦ ⟨?_, ?_⟩, fun hj ↦ ?_⟩
  · exact mul_nonneg (by simpa using hxpos.le) (hj j).1
  · rw [eq_sub_iff_add_eq, add_comm, ← eq_sub_iff_add_eq] at hi
    rw [inv_mul_le_one₀ hxpos, hi, le_sub_iff_add_le, ← hw]
    exact add_le_sum (fun i _ ↦ (hj i).1) (mem_univ j) (mem_univ i) hji
  · suffices ∀ j, 0 ≤ w j from
      fun j ↦ ⟨this j, hw ▸ Finset.single_le_sum (fun j _ ↦ this j) (mem_univ j)⟩
    intro j
    by_cases hji : j = i <;> aesop

set_option backward.isDefEq.respectTransparency.types false in
/-- A parallel cross-section of a simplex is the image of the base under a homothety. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Shift/Variant68757c164bda5b38bc13a7e7efbbc0d09023c744d834025affe5e9dfb574c32e.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `631de5e102c49fb2f5e6a80323906c2318aab9c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
