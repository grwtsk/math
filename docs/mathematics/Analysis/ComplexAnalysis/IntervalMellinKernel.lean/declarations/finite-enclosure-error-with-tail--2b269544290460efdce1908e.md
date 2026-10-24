# finite_enclosure_error_with_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf8a6b49-eff6-77d0-d62a-ab97171dfd26",
  "kind": "theorem",
  "lexical_name": "finite_enclosure_error_with_tail",
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
  "slug": "finite-enclosure-error-with-tail--2b269544290460efdce1908e",
  "source": {
    "blob": "28cb1e86a7b4b71d993a7934b75cf9604b369aec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 313,
    "path": "GRWTSK/Analysis/Complex/IntervalMellinKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b269544290460efdce1908ef4c6e555148e5eb4e726ba096e01624799a6ad6b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf8a6b49-eff6-77d0-d62a-ab97171dfd26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_enclosure_error_with_tail {ι : Type*} (S : Finset ι)
    (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ) {a b : ℝ}
    (ha : 1 < a) (hab : a ≤ b)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j) (full : ℂ) (tail : ℝ)
    (htail : ‖full - ∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)‖ ≤ tail) :
    ‖full - ∑ j ∈ S, (m j : ℂ) * kernel a b (c j)‖ ≤
      tail + ∑ j ∈ S, (m j : ℝ) * (sensitivity a b (β j) * r j) := by
  calc
    _ = ‖(full - ∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)) +
        ((∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)) -
          ∑ j ∈ S, (m j : ℂ) * kernel a b (c j))‖ := by congr 1; ring
    _ ≤ ‖full - ∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)‖ +
        ‖(∑ j ∈ S, (m j : ℂ) * kernel a b (ρ j)) -
          ∑ j ∈ S, (m j : ℂ) * kernel a b (c j)‖ := norm_add_le _ _
    _ ≤ _ := add_le_add htail (finite_enclosure_error S m ρ c r β ha hab hρ hc hr)

end
end GRWTSK.Analysis.Complex.IntervalMellinKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntervalMellinKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntervalMellinKernel.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28cb1e86a7b4b71d993a7934b75cf9604b369aec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
