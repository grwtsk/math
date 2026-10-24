# integral_comap_eq_mulEquivHaarChar_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55c75be1-e1f1-c619-8d25-d77678a509b7",
  "kind": "lemma",
  "lexical_name": "integral_comap_eq_mulEquivHaarChar_smul",
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
  "slug": "integral-comap-eq-mulequivhaarchar-smul--bb861cf51e42faf867d59985",
  "source": {
    "blob": "d1f836ed59e9882a4f3e41441e71b777ec97c93f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 98,
    "path": "GRWTSK/Analysis/MeasureTheory/MulEquivHaarChar/Variantaeca1cf5da0905c083a396d07ca239005a884553c55281dd1db39370ff379056.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb861cf51e42faf867d5998502187f8ffb76de8e428b6e24a3943221a5220bcf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MulEquivHaarChar/Variantaeca1cf5da0905c083a396d07ca239005a884553c55281dd1db39370ff379056.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55c75be1-e1f1-c619-8d25-d77678a509b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_comap_eq_mulEquivHaarChar_smul (μ : Measure G)
    [IsHaarMeasure μ] [Regular μ] {f : G → ℝ} (φ : G ≃ₜ* G) :
    ∫ a, f a ∂(μ.comap φ) = mulEquivHaarChar φ • ∫ a, f a ∂μ := by
  let e := φ.toHomeomorph.toMeasurableEquiv
  change ∫ a, f a ∂(comap e μ) = mulEquivHaarChar φ • ∫ a, f a ∂μ
  have : (map (e.symm) μ).IsHaarMeasure := φ.symm.isHaarMeasure_map μ
  have : (map (e.symm) μ).Regular := Regular.map φ.symm.toHomeomorph
  rw [← e.map_symm, ← mulEquivHaarChar_smul_integral_map (map e.symm μ) φ,
    map_map (by exact φ.toHomeomorph.toMeasurableEquiv.measurable) e.symm.measurable]
  -- congr -- breaks to_additive
  rw [show ⇑φ ∘ ⇑e.symm = id by ext; simp [e]]
  simp

@[to_additive addEquivAddHaarChar_smul_preimage]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MulEquivHaarChar/Variantaeca1cf5da0905c083a396d07ca239005a884553c55281dd1db39370ff379056.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MulEquivHaarChar/Variantaeca1cf5da0905c083a396d07ca239005a884553c55281dd1db39370ff379056.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1f836ed59e9882a4f3e41441e71b777ec97c93f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
