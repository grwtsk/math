# AnalyticDispersionReconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd714858eef127265084a224eb7ecd49d04cfeb277a24b46c81d3706b71c2d40",
  "kind": "structure",
  "lexical_name": "AnalyticDispersionReconstruction",
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
  "slug": "analyticdispersionreconstruction--c1bdde01272bcdae8fa910b0",
  "source": {
    "blob": "19d79f7ca70c6e4359a7d854e872bc6586b0b11c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1bdde01272bcdae8fa910b02252719b2ce5b0247d8dd18babf3a24ea9afbe7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd714858eef127265084a224eb7ecd49d04cfeb277a24b46c81d3706b71c2d40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalyticDispersionReconstruction (E : Type u)
    [NormedAddCommGroup E] [NormedSpace ℝ E] where
  potential : E → ℝ
  gradient : E → (E →L[ℝ] ℝ)
  hessian : E → (E →L[ℝ] (E →L[ℝ] ℝ))
  dispersion : E → PositiveForm E
  potential_analytic : ∀ x, AnalyticAt ℝ potential x
  gradient_analytic : ∀ x, AnalyticAt ℝ gradient x
  potential_hasFDeriv : ∀ x, HasFDerivAt potential (gradient x) x
  gradient_hasFDeriv : ∀ x, HasFDerivAt gradient (hessian x) x
  hessian_eq_dispersion :
    ∀ x u v, hessian x u v = (dispersion x).form u v

namespace AnalyticDispersionReconstruction

variable (D : AnalyticDispersionReconstruction E)

/-- The Frechet derivative of the potential is the stored gradient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AnalyticDispersion/Variantdf0f1c261c0529048255817e0cd860b406c31cc94d1dc0f1815e13aec39ef4dc.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19d79f7ca70c6e4359a7d854e872bc6586b0b11c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
