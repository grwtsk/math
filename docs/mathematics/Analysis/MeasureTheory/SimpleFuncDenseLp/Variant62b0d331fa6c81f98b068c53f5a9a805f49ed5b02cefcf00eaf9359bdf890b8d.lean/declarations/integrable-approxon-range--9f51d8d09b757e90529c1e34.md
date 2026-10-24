# integrable_approxOn_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72f82965-9ffe-3b7c-797a-1ff8a78b40ac",
  "kind": "theorem",
  "lexical_name": "integrable_approxOn_range",
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
  "slug": "integrable-approxon-range--9f51d8d09b757e90529c1e34",
  "source": {
    "blob": "5c77dc9c371fa99d42ebbb15160925d62de4b858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 269,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f51d8d09b757e90529c1e34051ddda7acc6bcb9c2bac56dfac3e9f8cb456aef",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72f82965-9ffe-3b7c-797a-1ff8a78b40ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_approxOn_range [BorelSpace E] {f : β → E} {μ : Measure β} (fmeas : Measurable f)
    [SeparableSpace (range f ∪ {0} : Set E)] (hf : Integrable f μ) (n : ℕ) :
    Integrable (approxOn f fmeas (range f ∪ {0}) 0 (by simp) n) μ :=
  integrable_approxOn fmeas hf _ (integrable_zero _ _ _) n
#align measure_theory.simple_func.integrable_approx_on_range MeasureTheory.SimpleFunc.integrable_approxOn_range

end Integrable

section SimpleFuncProperties

variable [MeasurableSpace α]

variable [NormedAddCommGroup E] [NormedAddCommGroup F]

variable {μ : Measure α} {p : ℝ≥0∞}

/-!
### Properties of simple functions in `Lp` spaces

A simple function `f : α →ₛ E` into a normed group `E` verifies, for a measure `μ`:
- `Memℒp f 0 μ` and `Memℒp f ∞ μ`, since `f` is a.e.-measurable and bounded,
- for `0 < p < ∞`,
  `Memℒp f p μ ↔ Integrable f μ ↔ f.FinMeasSupp μ ↔ ∀ y, y ≠ 0 → μ (f ⁻¹' {y}) < ∞`.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant62b0d331fa6c81f98b068c53f5a9a805f49ed5b02cefcf00eaf9359bdf890b8d.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c77dc9c371fa99d42ebbb15160925d62de4b858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
