# mellinEndpoint_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8d8af3f-73f3-3045-2e62-dc550359479f",
  "kind": "theorem",
  "lexical_name": "mellinEndpoint_norm_le",
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
  "slug": "mellinendpoint-norm-le--aa7206f50eaced091290edec",
  "source": {
    "blob": "0f5475191955a48dd82c667707d207bfa6738cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 249,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative06/Variantb156f18ed5bb4540bba060740d7b7b7a401529d00a7068644e6572861fbf819c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa7206f50eaced091290edec13dda8001f4c5f9084e970078524b50ae3621e16",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative06/Variantb156f18ed5bb4540bba060740d7b7b7a401529d00a7068644e6572861fbf819c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8d8af3f-73f3-3045-2e62-dc550359479f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mellinEndpoint_norm_le (A c t : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (ht : |t| = actualBumpMovingHeight A c) :
    ‖actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I)‖ ≤
      mellinEndpointConstant c * Real.exp (-((2*c-1)*A/5)) / A^9 := by
  have hp : 0 < A := by linarith
  have hz := actualBumpNormalization_lower A hA
  have hb := bumpMellinWeight_on_line_norm_le A c t hA hc
    (by rw [ht]; exact actualBumpMovingHeight_ge_one A c hA hc)
  rw [← actualInitialPrimeMellin_eq_bumpMellinWeight hA] at hb
  have hz0 : 0 < sourceNormalization A := source_normalization_pos A hA
  have hex : Real.exp ((2*c-1)*A) / (actualBumpMovingHeight A c)^6 =
      Real.exp (-((2*c-1)*A/5)) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul, ← Real.exp_sub]
    congr 1
    ring
  rw [ht] at hb
  calc
    _ ≤ (204288:ℝ)^2/sourceNormalization A*(1+c^2)*(1+(c-1)^2)*
        Real.exp ((2*c-1)*A)/(A^9*(actualBumpMovingHeight A c)^6) := hb
    _ = ((204288:ℝ)^2/sourceNormalization A*(1+c^2)*(1+(c-1)^2))*
        (Real.exp ((2*c-1)*A)/(actualBumpMovingHeight A c)^6)/A^9 := by ring
    _ = ((204288:ℝ)^2/sourceNormalization A*(1+c^2)*(1+(c-1)^2))*
        Real.exp (-((2*c-1)*A/5))/A^9 := by rw [hex]
    _ ≤ mellinEndpointConstant c*Real.exp (-((2*c-1)*A/5))/A^9 := by
      unfold mellinEndpointConstant
      gcongr

/-- Complete two-endpoint payment; the initial mass remains its authentic arithmetic constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative06/Variantb156f18ed5bb4540bba060740d7b7b7a401529d00a7068644e6572861fbf819c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative06/Variantb156f18ed5bb4540bba060740d7b7b7a401529d00a7068644e6572861fbf819c.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5475191955a48dd82c667707d207bfa6738cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
