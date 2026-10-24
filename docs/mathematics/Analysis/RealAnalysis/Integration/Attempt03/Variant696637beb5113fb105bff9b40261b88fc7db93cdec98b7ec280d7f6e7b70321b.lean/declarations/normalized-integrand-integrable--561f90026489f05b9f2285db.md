# normalized_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:808e9cbb-ae4a-0252-725d-afd69be3ef84",
  "kind": "theorem",
  "lexical_name": "normalized_integrand_integrable",
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
  "slug": "normalized-integrand-integrable--561f90026489f05b9f2285db",
  "source": {
    "blob": "55e74de990257d5694e7d2ea094993621f2caf65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:561f90026489f05b9f2285db46061e9bf150f89de6f024cc81096f2a8ed646e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:808e9cbb-ae4a-0252-725d-afd69be3ef84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_integrand_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ)*
      Complex.exp (z*(x : ℂ))) := by
  have hq := (normalizedTest_contDiff A (show 0 < A by linarith)).continuous
  have hqs := normalizedTest_hasCompactSupport A (show 0 < A by linarith)
  have hc : Continuous (fun x : ℝ =>
      (normalizedTest explicitSecondDerivative A x : ℂ)*Complex.exp (z*(x : ℂ))) := by
    fun_prop
  exact hc.integrable_of_hasCompactSupport
    ((hqs.comp_left (show (Complex.ofReal (0 : ℝ)) = 0 by simp)).mul_right)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant696637beb5113fb105bff9b40261b88fc7db93cdec98b7ec280d7f6e7b70321b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e74de990257d5694e7d2ea094993621f2caf65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
