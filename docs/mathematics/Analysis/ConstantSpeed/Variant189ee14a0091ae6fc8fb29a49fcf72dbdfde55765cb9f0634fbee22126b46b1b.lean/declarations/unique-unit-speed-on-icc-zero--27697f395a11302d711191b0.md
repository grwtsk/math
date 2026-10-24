# unique_unit_speed_on_Icc_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "308cfdf9f15ce8955e5602cf8bb521d19ef71e3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b1e97a0-f1da-c415-dfe5-97ede3a0625c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d21cef2-0b3c-d321-e5b6-999b3505bc90",
  "kind": "theorem",
  "lexical_name": "unique_unit_speed_on_Icc_zero",
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
  "slug": "unique-unit-speed-on-icc-zero--27697f395a11302d711191b0",
  "source": {
    "blob": "308cfdf9f15ce8955e5602cf8bb521d19ef71e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 208,
    "path": "GRWTSK/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27697f395a11302d711191b0e2bdd88728c5560ee9e12fae936a28720eeaa7ee",
  "verification": {
    "reference": "docs/verification/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d21cef2-0b3c-d321-e5b6-999b3505bc90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unique_unit_speed_on_Icc_zero {s t : ℝ} (hs : 0 ≤ s) (ht : 0 ≤ t) {φ : ℝ → ℝ}
    (φm : MonotoneOn φ <| Icc 0 s) (φst : φ '' Icc 0 s = Icc 0 t)
    (hfφ : HasUnitSpeedOn (f ∘ φ) (Icc 0 s)) (hf : HasUnitSpeedOn f (Icc 0 t)) :
    EqOn φ id (Icc 0 s) := by
  rw [← φst] at hf
  convert unique_unit_speed φm hfφ hf ⟨le_rfl, hs⟩ using 1
  have : φ 0 = 0 := by
    have hm : 0 ∈ φ '' Icc 0 s := by simp only [φst, ht, mem_Icc, le_refl, and_self]
    obtain ⟨x, xs, hx⟩ := hm
    apply le_antisymm ((φm ⟨le_rfl, hs⟩ xs xs.1).trans_eq hx) _
    have := φst ▸ mapsTo_image φ (Icc 0 s)
    exact (mem_Icc.mp (@this 0 (by rw [mem_Icc]; exact ⟨le_rfl, hs⟩))).1
  simp only [tsub_zero, this, add_zero]
  rfl

/-- The natural parameterization of `f` on `s`, which, if `f` has locally bounded variation on `s`,
* has unit speed on `s` (by `has_unit_speed_naturalParameterization`).
* composed with `variationOnFromTo f s a`, is at distance zero from `f`
  (by `edist_naturalParameterization_eq_zero`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308cfdf9f15ce8955e5602cf8bb521d19ef71e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
