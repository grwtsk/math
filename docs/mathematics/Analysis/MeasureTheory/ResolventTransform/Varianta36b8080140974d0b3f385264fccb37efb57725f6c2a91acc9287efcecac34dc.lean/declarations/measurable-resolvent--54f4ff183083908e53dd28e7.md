# measurable_resolvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d10f7a7-5714-7c85-e7d7-bd330d3de97e",
  "kind": "theorem",
  "lexical_name": "measurable_resolvent",
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
  "slug": "measurable-resolvent--54f4ff183083908e53dd28e7",
  "source": {
    "blob": "e6d3dc32243ae2ed2b49d485026264bc8c1f329f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 72,
    "path": "GRWTSK/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54f4ff183083908e53dd28e7cfdf8e85807e3c8c438ab6bf78ee20988adb5a39",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d10f7a7-5714-7c85-e7d7-bd330d3de97e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_resolvent {a : A} [OpensMeasurableSpace 𝕜] [NormedRing A] [NormedAlgebra 𝕜 A]
    [CompleteSpace A] [MeasurableSpace A] [BorelSpace A] :
    Measurable (resolvent (R := 𝕜) a) := by
  classical
  have h1 : ContinuousOn (resolvent (R := 𝕜) a) (resolventSet 𝕜 a) :=
    HasDerivAt.continuousOn (fun _ hx ↦ hasDerivAt_resolvent_const_left hx)
  have h2 : ContinuousOn (resolvent (R := 𝕜) a) (resolventSet 𝕜 a)ᶜ := by
    rw [continuousOn_iff_continuous_domRestrict]
    convert continuous_const (y := (0 : A)) with x
    simp
  have h3 : MeasurableSet (resolventSet 𝕜 a) := (isOpen_resolventSet a).measurableSet
  simpa using h1.measurable_piecewise h2 h3

variable [CompleteSpace 𝕜] [NormedDivisionRing A] [NormedAlgebra 𝕜 A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d3dc32243ae2ed2b49d485026264bc8c1f329f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
