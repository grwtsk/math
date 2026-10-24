# derivative_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12bcf48c-147a-0283-6800-92c6d683b58c",
  "kind": "theorem",
  "lexical_name": "derivative_variation",
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
  "slug": "derivative-variation--3dbcfd1c43141e92ee0d67dc",
  "source": {
    "blob": "96a4a162853b3bcd52adf92bec586be30c54c723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/Analysis/Complex/NewtonDisk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dbcfd1c43141e92ee0d67dc319c0b3ad2a3fc797ed2624ad6bbecf2ff90f083",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NewtonDisk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12bcf48c-147a-0283-6800-92c6d683b58c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_variation {g g' : ℂ → ℂ} {c : ℂ} {R L : ℝ}
    (hR : 0 ≤ R)
    (hg : ∀ z ∈ closedBall c R, HasDerivAt g (g' z) z)
    (hL : ∀ z ∈ closedBall c R, ‖g' z‖ ≤ L)
    {z : ℂ} (hz : z ∈ closedBall c R) :
    ‖g z - g c‖ ≤ L * R := by
  have hc : c ∈ closedBall c R := by simpa using hR
  have hL0 : 0 ≤ L := (norm_nonneg _).trans (hL c hc)
  have hl := (convex_closedBall c R).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun u hu => (hg u hu).hasDerivWithinAt) hL hc hz
  exact hl.trans (mul_le_mul_of_nonneg_left (by simpa only [mem_closedBall, dist_eq_norm] using hz) hL0)

end GRWTSK.Analysis.Complex.NewtonDisk
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NewtonDisk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NewtonDisk.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a4a162853b3bcd52adf92bec586be30c54c723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
