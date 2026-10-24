# mirror_pair_separation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcf83969-a627-9f91-2505-3bab55d7a52b",
  "kind": "theorem",
  "lexical_name": "mirror_pair_separation",
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
  "slug": "mirror-pair-separation--6a72d3d5dc315b59881441fe",
  "source": {
    "blob": "de9ddee70a349711bcff2758b97c1f3080691378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 226,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a72d3d5dc315b59881441fef1187f8967ef6d2ee570d653efc07460e742e576",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcf83969-a627-9f91-2505-3bab55d7a52b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mirror_pair_separation {U : Set ℂ} (hm : MirrorStable U)
    (C : ∀ t : ℝ, DerivativeDisk poleNormalizedZeta (carrier U t))
    {z : ℂ} (hz : z ∈ U) :
    (‖(C (ZetaCommutatorRoot.root.heightAt z)).linearPart‖ -
      (C (ZetaCommutatorRoot.root.heightAt z)).radius) * |2*z.re-1| ≤
      ‖poleNormalizedZeta z-poleNormalizedZeta (criticalReflection z)‖ := by
  have h := (C (ZetaCommutatorRoot.root.heightAt z)).lower_lipschitz
    (show z ∈ carrier U (ZetaCommutatorRoot.root.heightAt z) from ⟨hz,rfl⟩)
    (show criticalReflection z ∈ carrier U (ZetaCommutatorRoot.root.heightAt z) from
      ⟨hm z hz,root_height_criticalReflection z⟩)
  simpa only [norm_mirror_displacement] using h

/-- The source/model derivative error and the model/center error are independent
at EVERY height. Neither is obtained by differentiating a value-error inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripHeightFiberCriterion.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de9ddee70a349711bcff2758b97c1f3080691378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
