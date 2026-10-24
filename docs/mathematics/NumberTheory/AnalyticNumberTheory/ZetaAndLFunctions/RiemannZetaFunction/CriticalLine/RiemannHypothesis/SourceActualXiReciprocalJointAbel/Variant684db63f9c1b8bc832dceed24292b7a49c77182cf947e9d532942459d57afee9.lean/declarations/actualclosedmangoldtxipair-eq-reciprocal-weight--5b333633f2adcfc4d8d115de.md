# actualClosedMangoldtXiPair_eq_reciprocal_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b1cd657-e990-a3b2-45d8-482db93a4048",
  "kind": "theorem",
  "lexical_name": "actualClosedMangoldtXiPair_eq_reciprocal_weight",
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
  "slug": "actualclosedmangoldtxipair-eq-reciprocal-weight--5b333633f2adcfc4d8d115de",
  "source": {
    "blob": "831c0425d53dfc541ec4ffbaa0581e850fc4da8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiReciprocalJointAbel/Variant684db63f9c1b8bc832dceed24292b7a49c77182cf947e9d532942459d57afee9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b333633f2adcfc4d8d115defec38c149e8a313215c3a9578eebf60773eb37ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiReciprocalJointAbel/Variant684db63f9c1b8bc832dceed24292b7a49c77182cf947e9d532942459d57afee9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b1cd657-e990-a3b2-45d8-482db93a4048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedMangoldtXiPair_eq_reciprocal_weight (Y : ℝ) :
    actualClosedMangoldtXiPair Y =
      ∑ d ∈ Finset.Icc 1 (Nat.floor Y),
        (moebius d : ℝ) / (d : ℝ) * actualReciprocalXiQuotientWeight Y d := by
  rw [actualClosedMangoldtXiPair_eq_joint_hyperbola]
  unfold actualClosedMobiusXiHyperbola actualReciprocalXiQuotientWeight
  apply Finset.sum_congr rfl
  intro d hd
  have hdp : 0 < (d : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hd).1
  field_simp

/-- Exact source finite Abel leaves actual signed reciprocal prefixes and true joint differences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiReciprocalJointAbel/Variant684db63f9c1b8bc832dceed24292b7a49c77182cf947e9d532942459d57afee9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiReciprocalJointAbel/Variant684db63f9c1b8bc832dceed24292b7a49c77182cf947e9d532942459d57afee9.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `831c0425d53dfc541ec4ffbaa0581e850fc4da8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
