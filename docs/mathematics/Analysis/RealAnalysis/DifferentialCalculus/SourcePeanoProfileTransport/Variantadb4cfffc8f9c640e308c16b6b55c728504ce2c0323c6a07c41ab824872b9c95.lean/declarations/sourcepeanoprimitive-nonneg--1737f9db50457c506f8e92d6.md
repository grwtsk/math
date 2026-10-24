# sourcePeanoPrimitive_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25c55189-79f5-73db-91b6-a923fd2dc019",
  "kind": "theorem",
  "lexical_name": "sourcePeanoPrimitive_nonneg",
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
  "slug": "sourcepeanoprimitive-nonneg--1737f9db50457c506f8e92d6",
  "source": {
    "blob": "d42e92b6a0beaf92e43adf88f74740210b42659a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1737f9db50457c506f8e92d6d827da1d37cae6f2c716d25dfd34a2a8d9fec0f2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25c55189-79f5-73db-91b6-a923fd2dc019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePeanoPrimitive_nonneg {A t : ℝ} (hA : 0 < A)
    (hthreshold : (136 / 7 : ℝ) ≤ A ^ 2) (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    0 ≤ sourcePeanoPrimitive A t := by
  have hu0 : 0 ≤ t / A := div_nonneg ht0 hA.le
  have hu2 : t / A ≤ 2 := (div_le_iff₀ hA).mpr (by linarith)
  have hn := peanoNumerator_nonneg hA hthreshold hu0 hu2
  have hZ : 0 < sourceNormalization A := by
    unfold sourceNormalization
    positivity
  rw [sourcePeanoPrimitive_eq_profile hA ht0 ht2]
  positivity

/-- The sharp threshold applies to the actual source primitive, including both endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42e92b6a0beaf92e43adf88f74740210b42659a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
