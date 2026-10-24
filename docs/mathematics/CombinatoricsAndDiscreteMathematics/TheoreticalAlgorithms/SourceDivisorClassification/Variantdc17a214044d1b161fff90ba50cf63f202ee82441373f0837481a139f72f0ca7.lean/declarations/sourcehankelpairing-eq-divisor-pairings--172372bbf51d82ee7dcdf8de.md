# sourceHankelPairing_eq_divisor_pairings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a114f07-00c3-dd84-5a4d-32352f79f961",
  "kind": "theorem",
  "lexical_name": "sourceHankelPairing_eq_divisor_pairings",
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
  "slug": "sourcehankelpairing-eq-divisor-pairings--172372bbf51d82ee7dcdf8de",
  "source": {
    "blob": "50e7e23496dd259278a3df5e9cdff8cf57c1cba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 372,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:172372bbf51d82ee7dcdf8dea1d87e77c2bce3031ee97fe02431dd4bdf4faf44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a114f07-00c3-dd84-5a4d-32352f79f961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceHankelPairing_eq_divisor_pairings (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A = ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      (moebius d : ℝ) * divisorHankelPairing A d := by
  classical
  unfold sourceHankelPairing divisorHankelPairing
  simp_rw [centeredMobiusReflectedProfile_eq_divisor_discrepancy A hA, Finset.mul_sum]
  rw [integral_finsetSum _ (fun d hd => by
    convert (divisor_source_product_integrable A hA d).const_mul (moebius d : ℝ) using 1
    ext x
    ring)]
  apply Finset.sum_congr rfl
  intro d hd
  rw [← integral_const_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun x => by ring)

/-- The physical divisor reconstruction retains the actual centered deleted diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e7e23496dd259278a3df5e9cdff8cf57c1cba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
