# strict_add_short_eq_vonMangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9b14d7a-4c99-1723-85a4-e37ecf83c0b6",
  "kind": "theorem",
  "lexical_name": "strict_add_short_eq_vonMangoldt",
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
  "slug": "strict-add-short-eq-vonmangoldt--f719e2c55d1e945967b7eab6",
  "source": {
    "blob": "957b2c2af82d0fc2b342824ac33003ecadd4612d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f719e2c55d1e945967b7eab6e8893b728a5232f9b111eb7af45d1d2f13e69257",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9b14d7a-4c99-1723-85a4-e37ecf83c0b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_add_short_eq_vonMangoldt (U n : ℕ) :
    strictDivisorLogCoefficient U n + shortDivisorLogCoefficient U n =
      ArithmeticFunction.vonMangoldt n := by
  rw [vonMangoldt_eq_mobius_log_convolution]
  unfold strictDivisorLogCoefficient shortDivisorLogCoefficient
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro dk _
  by_cases hd : dk.1 ≤ U
  · simp [hd, not_lt.mpr hd, realMoebius]
  · simp [hd, lt_of_not_ge hd, realMoebius]

/-- The supplied strict coefficient is actual Lambda minus the full short coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957b2c2af82d0fc2b342824ac33003ecadd4612d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
