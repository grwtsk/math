# physicalDisclosedCovariance_eq_actual_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff09d9a9-c65a-ef13-f8f6-ba8757deedd8",
  "kind": "theorem",
  "lexical_name": "physicalDisclosedCovariance_eq_actual_divisors",
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
  "slug": "physicaldisclosedcovariance-eq-actual-divisors--9dd3c0009b61e3a372d52bb5",
  "source": {
    "blob": "34ae4eabc303ce6239fe00d976186eb152b6e4cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dd3c0009b61e3a372d52bb5f5e000c480d976356c613334f79ad62ac4368f92",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff09d9a9-c65a-ef13-f8f6-ba8757deedd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalDisclosedCovariance_eq_actual_divisors (A : ℝ) (P : Finset ℕ) :
    physicalDisclosedCovariance A P =
      weightedDivisors P (vaughanCutoff A) (divisorInteraction A) := by
  classical
  unfold physicalDisclosedCovariance weightedDivisors centeredDisclosure
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  conv_lhs =>
    arg 2
    ext m
    rw [Finset.sum_comm]
  rw [Finset.sum_comm]
  unfold divisorInteraction divisorCovarianceInteraction
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d _
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- This is the undisclosed part of the ORIGINAL independent main term, not a main term manufactured from a residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ae4eabc303ce6239fe00d976186eb152b6e4cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
