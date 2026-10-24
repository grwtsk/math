# actualTwistedTimeDensity_column_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:495cbc2f-8aff-1650-5dfa-2cc207475342",
  "kind": "theorem",
  "lexical_name": "actualTwistedTimeDensity_column_deriv",
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
  "slug": "actualtwistedtimedensity-column-deriv--3b0eca930c50786235cd3c99",
  "source": {
    "blob": "17e6559ed7677d8a2bda9d67fd9a9bc54b0a2e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variantfb9a03ee8781c3c3ce1c4e0494b8f4b4872ce3071a600fd588665f145bc8a9bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b0eca930c50786235cd3c9946caad6f00f04de3673c1727fb683887b7ff73e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variantfb9a03ee8781c3c3ce1c4e0494b8f4b4872ce3071a600fd588665f145bc8a9bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:495cbc2f-8aff-1650-5dfa-2cc207475342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTwistedTimeDensity_column_deriv {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    deriv (actualTwistedTimeDensity A t) s + actualTwistedTimeDensity A t s / 2 =
      covariantMixedDerivative (actualLogMixedDensity A) t s := by
  have hf : (fun y => deriv (fun x => actualLogMixedDensity A x y) t -
      actualLogMixedDensity A t y / 2) = actualTwistedTimeDensity A t := by
    funext y
    exact actualTwistedTimeDensity_eq_time_deriv hA t y
  unfold covariantMixedDerivative
  rw [hf, actualTwistedTimeDensity_eq_time_deriv hA t s]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variantfb9a03ee8781c3c3ce1c4e0494b8f4b4872ce3071a600fd588665f145bc8a9bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/244148a9c909235ff8e7RootActualDoubleAdjointTransfer/Variantfb9a03ee8781c3c3ce1c4e0494b8f4b4872ce3071a600fd588665f145bc8a9bb.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17e6559ed7677d8a2bda9d67fd9a9bc54b0a2e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
