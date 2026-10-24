# Measure.withDensityᵥ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3bc035114c4a0388664d0294699deb1e62ca064f9e4e0252970ac5aaa6bb4ba",
  "kind": "def",
  "lexical_name": "Measure.withDensityᵥ",
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
  "slug": "measure-withdensity--9886839e043a30994f8d9014",
  "source": {
    "blob": "9d65e62a3388b54e00d417ffb9ba5de5d55b7d82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9886839e043a30994f8d901449e708dc62556991ebfbbcbbfd2b68efd768c0d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3bc035114c4a0388664d0294699deb1e62ca064f9e4e0252970ac5aaa6bb4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Measure.withDensityᵥ {m : MeasurableSpace α} (μ : Measure α) (f : α → E) : VectorMeasure α E :=
  if hf : Integrable f μ then
    { measureOf' := fun s => if MeasurableSet s then ∫ x in s, f x ∂μ else 0
      empty' := by simp
      not_measurable' := fun _ hs => if_neg hs
      m_iUnion' := fun s hs₁ hs₂ => by
        convert hasSum_integral_iUnion hs₁ hs₂ hf.integrableOn with n
        · rw [if_pos (hs₁ n)]
        · rw [if_pos (MeasurableSet.iUnion hs₁)] }
  else 0

open Measure

variable {f g : α → E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variantaf65457799d4c43249915b2f517974cfcc3a3161d77b279f840813f4b36c2f94.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d65e62a3388b54e00d417ffb9ba5de5d55b7d82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
