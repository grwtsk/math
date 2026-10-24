# mertensResidual_le_moment_add_sqrt_of_scalar_directional_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a4c7534-a02a-3fc2-a748-52d2f9abcc2d",
  "kind": "theorem",
  "lexical_name": "mertensResidual_le_moment_add_sqrt_of_scalar_directional_rows",
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
  "slug": "mertensresidual-le-moment-add-sqrt-of-scalar-directional-rows--30631e378e6a4f5a77c03b36",
  "source": {
    "blob": "4625862c1b4f2e8415f15ecbd4ebde8191c1c2a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 197,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDirectional/Variant7fa089ce291d74375532395dca2364ecc043bad192d9eabc5d8eccc1a03f4de6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30631e378e6a4f5a77c03b36d0866ca46a44f76380f7b5408370953fe146729c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDirectional/Variant7fa089ce291d74375532395dca2364ecc043bad192d9eabc5d8eccc1a03f4de6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a4c7534-a02a-3fc2-a748-52d2f9abcc2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_le_moment_add_sqrt_of_scalar_directional_rows
    (hV : Monotone V) (hzero : V 0 = ⊥) (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      combinedDirectionalPrice V (scalarCompensatedPrimeOperator A)
        (originalSourceState A) j ^ 2) ≤ B) :
    mertensResidual A ≤ criticalContinuousMoment A + Real.sqrt B := by
  have h := full_readout_le_of_directional_projection_rows V hV hzero
    (scalarCompensatedPrimeOperator A) (scalarCompensatedPrimeOperator_selfAdjoint A)
    (originalSourceState A) n hq B hB
  rw [originalSourceState_norm (by linarith : 0 < A), one_mul,
    scalarCompensatedPrimeOperator_source_readout A hA] at h
  linarith

/-- A one-block unit original source costs exactly `max 0 r_A`, proving no new cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDirectional/Variant7fa089ce291d74375532395dca2364ecc043bad192d9eabc5d8eccc1a03f4de6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDirectional/Variant7fa089ce291d74375532395dca2364ecc043bad192d9eabc5d8eccc1a03f4de6.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4625862c1b4f2e8415f15ecbd4ebde8191c1c2a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
