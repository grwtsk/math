# mem_addWellApproximable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18607031-3cbc-2a37-fa82-bd6b16400726",
  "kind": "theorem",
  "lexical_name": "mem_addWellApproximable_iff",
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
  "slug": "mem-addwellapproximable-iff--546695570d08edde8f7738f6",
  "source": {
    "blob": "f0c4d939f3efd9121a4f4ba6f06dbf553002a58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 192,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:546695570d08edde8f7738f6365989c822f17819b2c8f9aeedd8b7b0a52cd83a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18607031-3cbc-2a37-fa82-bd6b16400726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_addWellApproximable_iff (δ : ℕ → ℝ) (x : UnitAddCircle) :
    x ∈ addWellApproximable UnitAddCircle δ ↔
      {n : ℕ | ∃ m < n, gcd m n = 1 ∧ ‖x - ↑((m : ℝ) / n)‖ < δ n}.Infinite := by
  simp only [mem_add_wellApproximable_iff, ← Nat.cofinite_eq_atTop, cofinite.blimsup_set_eq,
    mem_setOf_eq]
  refine' iff_of_eq (congr_arg Set.Infinite <| ext fun n => ⟨fun hn => _, fun hn => _⟩)
  · exact (mem_approxAddOrderOf_iff hn.1).mp hn.2
  · have h : 0 < n := by obtain ⟨m, hm₁, _, _⟩ := hn; exact pos_of_gt hm₁
    exact ⟨h, (mem_approxAddOrderOf_iff h).mpr hn⟩
#align unit_add_circle.mem_add_well_approximable_iff UnitAddCircle.mem_addWellApproximable_iff

end UnitAddCircle

namespace AddCircle

variable {T : ℝ} [hT : Fact (0 < T)]

local notation a "∤" b => ¬a ∣ b

local notation a "∣∣" b => a ∣ b ∧ (a * a)∤b

local notation "𝕊" => AddCircle T

/-- **Gallagher's ergodic theorem** on Diophantine approximation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variant4d72764633cc6c80a883686d3c170f186299f4324638a03381db4294acef9d3f.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0c4d939f3efd9121a4f4ba6f06dbf553002a58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
