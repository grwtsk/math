# affine_from_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66e6a2e1-38f3-64c9-8041-a8e60433fe09",
  "kind": "theorem",
  "lexical_name": "affine_from_two",
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
  "slug": "affine-from-two--81aaebc3aad5171223c96fca",
  "source": {
    "blob": "4210a126e3342ca11436202c1640b5afdc33df8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 72,
    "path": "GRWTSK/Analysis/Real/ContinuousMidpointAffine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81aaebc3aad5171223c96fcab935a1b694c039f5b48e0d3bab9af984707238b2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66e6a2e1-38f3-64c9-8041-a8e60433fe09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_from_two (f : ℝ → ℂ) (a b : ℝ) (hab : a < b)
    (hc : ContinuousOn f (Icc a b))
    (hm : ∀ u ∈ Icc a b, ∀ v ∈ Icc a b, u < v →
      f ((u + v) / 2) = (f u + f v) / 2)
    (hu : (2 : ℝ) ∈ Icc a b) (hv : (3 : ℝ) ∈ Icc a b)
    (x : ℝ) (hx : x ∈ Icc a b) :
    f x = f 2 + ((x - 2 : ℝ) : ℂ) * (f 3 - f 2) := by
  have h2 := chord_identity f a b hab hc hm 2 hu
  have h3 := chord_identity f a b hab hc hm 3 hv
  have hxx := chord_identity f a b hab hc hm x hx
  have hd : ((b - a : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt (sub_pos.mpr hab))
  have he : ((b - a : ℝ) : ℂ) *
      (f x - f 2 - ((x - 2 : ℝ) : ℂ) * (f 3 - f 2)) = 0 := by
    push_cast at h2 h3 hxx ⊢
    linear_combination hxx + ((x : ℂ) - 3) * h2 - ((x : ℂ) - 2) * h3
  have hz := (mul_eq_zero.mp he).resolve_left hd
  linear_combination hz
end GRWTSK.Analysis.Real.ContinuousMidpointAffine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/ContinuousMidpointAffine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/ContinuousMidpointAffine.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4210a126e3342ca11436202c1640b5afdc33df8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
