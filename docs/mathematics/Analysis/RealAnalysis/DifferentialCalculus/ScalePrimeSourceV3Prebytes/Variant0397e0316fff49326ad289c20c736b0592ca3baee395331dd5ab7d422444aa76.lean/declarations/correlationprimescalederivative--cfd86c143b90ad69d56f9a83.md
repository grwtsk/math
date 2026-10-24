# correlationPrimeScaleDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d4b42d86c733764aec2612945f2c05610f5eae026d181b38a1ab89cafbc46d6",
  "kind": "def",
  "lexical_name": "correlationPrimeScaleDerivative",
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
  "slug": "correlationprimescalederivative--cfd86c143b90ad69d56f9a83",
  "source": {
    "blob": "dd4db765e05b213420d2bb43ba60a2ccdc95395e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 289,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV3Prebytes/Variant0397e0316fff49326ad289c20c736b0592ca3baee395331dd5ab7d422444aa76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfd86c143b90ad69d56f9a833df5c59e3653d27be072dc4918311ae8f1ba3488",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV3Prebytes/Variant0397e0316fff49326ad289c20c736b0592ca3baee395331dd5ab7d422444aa76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d4b42d86c733764aec2612945f2c05610f5eae026d181b38a1ab89cafbc46d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def correlationPrimeScaleDerivative (A s : ℝ) : ℝ :=
  (⟪spatialDerivativeState A, translation s (scaleDerivativeState A)⟫_ℂ).re -
    (⟪scaleDerivativeState A, translation s (spatialDerivativeState A)⟫_ℂ).re

/-- The slope identity keeps both real scalar actions inside the complex pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV3Prebytes/Variant0397e0316fff49326ad289c20c736b0592ca3baee395331dd5ab7d422444aa76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV3Prebytes/Variant0397e0316fff49326ad289c20c736b0592ca3baee395331dd5ab7d422444aa76.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4db765e05b213420d2bb43ba60a2ccdc95395e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
