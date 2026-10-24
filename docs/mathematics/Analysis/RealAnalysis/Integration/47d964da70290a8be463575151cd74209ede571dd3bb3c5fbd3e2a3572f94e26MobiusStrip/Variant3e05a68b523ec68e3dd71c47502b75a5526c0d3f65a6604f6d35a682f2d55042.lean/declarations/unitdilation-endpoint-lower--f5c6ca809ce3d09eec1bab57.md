# unitDilation_endpoint_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e887623f-9ff4-00d8-3d08-c5342363bc3b",
  "kind": "theorem",
  "lexical_name": "unitDilation_endpoint_lower",
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
  "slug": "unitdilation-endpoint-lower--f5c6ca809ce3d09eec1bab57",
  "source": {
    "blob": "ce26f376a53cac584bc777addb5fd986765d3061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 19,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5c6ca809ce3d09eec1bab57fc44d6427882985095e6b3aad0dd0177352e1573",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e887623f-9ff4-00d8-3d08-c5342363bc3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem unitDilation_endpoint_lower (A x : ℝ) (hA : 1 ≤ A)
    (hx : 1 - 1/(2*A) ≤ x) (hx1 : x ≤ 1) :
    4/A^2 * (1-x)^2 ≤ unitDilation (1/A^2) x := by
  have hA0 : 0 < A := by linarith
  have hhalf : 1/(2*A) ≤ 1/2 := by rw [div_le_div_iff₀ (by positivity) (by norm_num)]; linarith
  have hx0 : 0 ≤ x := by linarith
  have hxhalf : 1/2 ≤ x := by linarith
  have hx2 : 1/4 ≤ x^2 := by nlinarith
  have hsmall : A*(1-x) ≤ 1/2 := by
    have := (le_div_iff₀ (by positivity : 0 < 2*A)).1 (show 1-x ≤ 1/(2*A) by linarith)
    nlinarith
  have hbase : 0 ≤ 1-x^2 := by nlinarith
  have hfac : A*(1-x^2) ≤ 1 := by
    nlinarith [mul_nonneg (show 0 ≤ A*(1-x) by positivity) (show 0 ≤ 1-x by linarith)]
  have hsq : A^2*(1-x^2)^2 ≤ 1 := by
    nlinarith [sq_nonneg (A*(1-x^2)), mul_nonneg (show 0 ≤ A*(1-x^2) by positivity)
      (show 0 ≤ 1-A*(1-x^2) by linarith)]
  have hbr : 4 ≤ 8*(7*x^2-1)-A^2/4*(1-x^2)^2 := by nlinarith
  have hdist : (1-x)^2 ≤ (1-x^2)^2 := by
    nlinarith [mul_nonneg hx0 (show 0 ≤ 1-x by linarith), mul_nonneg (show 0 ≤ 1-x by linarith) (show 0 ≤ x*(1-x) by positivity)]
  have he : unitDilation (1/A^2) x =
      (1-x^2)^2/A^2 * (8*(7*x^2-1)-A^2/4*(1-x^2)^2) := by
    dsimp [unitDilation, unitSecond, unitBump]
    field_simp
    ring
  rw [he]
  calc
    _ ≤ 4/A^2*(1-x^2)^2 := mul_le_mul_of_nonneg_left hdist (by positivity)
    _ = ((1-x^2)^2/A^2)*4 := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left hbr (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce26f376a53cac584bc777addb5fd986765d3061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
