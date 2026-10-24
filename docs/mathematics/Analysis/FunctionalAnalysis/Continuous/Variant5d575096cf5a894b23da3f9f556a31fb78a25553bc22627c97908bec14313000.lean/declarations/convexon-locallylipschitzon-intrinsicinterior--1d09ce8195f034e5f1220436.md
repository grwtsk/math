# ConvexOn.locallyLipschitzOn_intrinsicInterior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:932be179-f8fa-c35b-a958-de43f5193fdb",
  "kind": "lemma",
  "lexical_name": "ConvexOn.locallyLipschitzOn_intrinsicInterior",
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
  "slug": "convexon-locallylipschitzon-intrinsicinterior--1d09ce8195f034e5f1220436",
  "source": {
    "blob": "e436ad9b2677486583a0924486a1323593bea052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 233,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d09ce8195f034e5f1220436e09b0ca798454b54575f3a70eff07cf89ce3a0b8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:932be179-f8fa-c35b-a958-de43f5193fdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConvexOn.locallyLipschitzOn_intrinsicInterior (hf : ConvexOn ℝ C f) :
    LocallyLipschitzOn (intrinsicInterior ℝ C) f := by
  obtain rfl | ⟨p, hp⟩ := C.eq_empty_or_nonempty
  · simp
  have : Nonempty (affineSpan ℝ C) := ⟨⟨p, subset_affineSpan ℝ C hp⟩⟩
  set ψ := (AffineIsometryEquiv.constVSub ℝ (⟨p, subset_affineSpan ℝ C hp⟩ : affineSpan ℝ C)).symm
  have hiso : Isometry (Subtype.val ∘ ⇑ψ) := isometry_subtype_coe.comp ψ.isometry
  have hL := (hf.comp_affineMap
    ((affineSpan ℝ C).subtype.comp ψ.toAffineEquiv.toAffineMap)).locallyLipschitzOn_interior
  refine (hiso.locallyLipschitzOn_image (by simpa using hL)).mono ?_
  rw [Set.preimage_comp]
  rintro x hx
  obtain ⟨w, hw, rfl⟩ := mem_intrinsicInterior.1 hx
  exact ⟨ψ.symm w, preimage_interior_subset_interior_preimage ψ.continuous (by simpa using hw),
    by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Continuous/Variant5d575096cf5a894b23da3f9f556a31fb78a25553bc22627c97908bec14313000.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e436ad9b2677486583a0924486a1323593bea052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
