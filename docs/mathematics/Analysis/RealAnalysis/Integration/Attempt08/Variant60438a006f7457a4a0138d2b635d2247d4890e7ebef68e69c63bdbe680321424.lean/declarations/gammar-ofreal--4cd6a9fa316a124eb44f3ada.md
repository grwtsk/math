# gammaR_ofReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:596bf915-290d-616c-c40b-8dfcbb25c27c",
  "kind": "theorem",
  "lexical_name": "gammaR_ofReal",
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
  "slug": "gammar-ofreal--4cd6a9fa316a124eb44f3ada",
  "source": {
    "blob": "cbf018753bb387ccad36b11574f9cee2d79c4b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cd6a9fa316a124eb44f3adad4e28c8e0a986896d6368caa88026655bfa263da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:596bf915-290d-616c-c40b-8dfcbb25c27c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaR_ofReal (σ : ℝ) : Complex.Gammaℝ (σ : ℂ) = (realGammaR σ : ℂ) := by
  rw [Complex.Gammaℝ_def]
  have he : -(σ : ℂ) / 2 = ((-σ / 2 : ℝ) : ℂ) := by push_cast; ring
  have hx : (σ : ℂ) / 2 = ((σ / 2 : ℝ) : ℂ) := by push_cast; ring
  rw [he, ← Complex.ofReal_cpow Real.pi_pos.le, hx, Complex.Gamma_ofReal]
  simp only [realGammaR, ofReal_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbf018753bb387ccad36b11574f9cee2d79c4b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
