# _root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.ContMDiffWithinAt.mpullbackWithin_vectorField'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0de9479-40d1-ae5d-e371-3b9988b842b8",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.ContMDiffWithinAt.mpullbackWithin_vectorField'",
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
  "slug": "root-grwtsk-geometry-differentialgeometry-mpullbackwithin-variant6edfacb--0fd4b9e7f326e158246b23ef",
  "source": {
    "blob": "615e126c4fe99c2dbf0bc2c6eafd189eeb7b2734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 515,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fd4b9e7f326e158246b23ef87f18a46da0ab920a9dc2e0750dddf3d6abc4a3e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0de9479-40d1-ae5d-e371-3b9988b842b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.GRWTSK.Geometry.DifferentialGeometry.MpullbackWithin.Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.ContMDiffWithinAt.mpullbackWithin_vectorField' {u : Set M}
    (hV : CMDiffAt[t] m (T% V) (f x₀))
    (hf : CMDiffAt[u] n f x₀) (hf' : (mfderiv[u] f x₀).IsInvertible)
    (hx₀ : x₀ ∈ s) (hs : UniqueMDiff[s]) (hmn : m + 1 ≤ n)
    (hst : f ⁻¹' t ∈ 𝓝[s] x₀) (hu : s ⊆ u) :
    CMDiffAt[s] m (T% (mpullbackWithin I I' f V u)) x₀ := by
  have hn : 1 ≤ n := le_trans (by simp) hmn
  have hh : (mfderiv[s] f x₀).IsInvertible := by
    convert! hf' using 1
    exact (hf.mdifferentiableWithinAt <| by positivity).mfderivWithin_mono (hs _ hx₀) hu
  apply (hV.mpullbackWithin_vectorField_of_mem (hf.mono hu) hh hx₀ hs hmn
    hst).congr_of_eventuallyEq_of_mem _ hx₀
  have Y := (contMDiffWithinAt_iff_contMDiffWithinAt_nhdsWithin (by simp)).1 (hf.of_le hn)
  simp_rw [insert_eq_of_mem (hu hx₀)] at Y
  filter_upwards [self_mem_nhdsWithin, nhdsWithin_mono _ hu Y] with y hy h'y
  simp only [mpullbackWithin, Bundle.TotalSpace.mk_inj]
  rw [MDifferentiableWithinAt.mfderivWithin_mono (h'y.mdifferentiableWithinAt one_ne_zero)
    (hs _ hy) hu]

/-- The pullback of a `C^m` vector field by a `C^n` function with invertible derivative and
with `m + 1 ≤ n` is `C^m`.
Version within a set at a point, with a set used for the pullback possibly larger. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `615e126c4fe99c2dbf0bc2c6eafd189eeb7b2734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
