# squareTailNegativeMean_le_baseline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb2b2e04-55e2-27a1-f24e-2ab1e446c88a",
  "kind": "theorem",
  "lexical_name": "squareTailNegativeMean_le_baseline",
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
  "slug": "squaretailnegativemean-le-baseline--416813e23c09c0384af81b48",
  "source": {
    "blob": "e6cee640aedfd75b443c95167df97fbe2a4a87d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 285,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant360142c83404e1adb560928cdbeb7a32dc109cdc8e3b225c38c757b4832e8931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:416813e23c09c0384af81b484ca0264a7888cea52e32d6c81fb467e034b01b3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant360142c83404e1adb560928cdbeb7a32dc109cdc8e3b225c38c757b4832e8931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb2b2e04-55e2-27a1-f24e-2ab1e446c88a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTailNegativeMean_le_baseline {A : ℝ} (hA : 1 ≤ A) :
    squareTailNegativeMean A ≤ squarePrefixBaseline := by
  have hp : 0 < A := by linarith
  have hi := (squareTail_intervalIntegrable hp).mul_continuousOn
    (negativeSlope_continuous hp).continuousOn
  have hb := (negativeSlope_intervalIntegrable hp).const_mul squarePrefixBaseline
  unfold squareTailNegativeMean
  apply (div_le_iff₀ (negativeMass_pos hA)).mpr
  calc
    _ ≤ ∫ u in 0..2*A, squarePrefixBaseline * negativeSlope A u :=
      intervalIntegral.integral_mono_on (by linarith) hi hb
        (fun u _ => mul_le_mul_of_nonneg_right (squareTail_le_baseline u)
          (negativeSlope_nonneg A u))
    _ = squarePrefixBaseline * negativeMass A := by
      rw [intervalIntegral.integral_const_mul]
      rfl

/-- Both phases retain the same literal arithmetic error after exact square-tail removal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant360142c83404e1adb560928cdbeb7a32dc109cdc8e3b225c38c757b4832e8931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant360142c83404e1adb560928cdbeb7a32dc109cdc8e3b225c38c757b4832e8931.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6cee640aedfd75b443c95167df97fbe2a4a87d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
