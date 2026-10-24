# twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant_eq_halfIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b6b3555-b78d-8122-6afc-7e87c170e4b5",
  "kind": "theorem",
  "lexical_name": "twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant_eq_halfIndex",
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
  "slug": "twounithalfindexaffinechowlanonzeromodulusmajorant-eq-halfindex--5f113905fde23e72ddf92480",
  "source": {
    "blob": "791e4238fb1bb06bed50920b4787f79f26e49705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 211,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f113905fde23e72ddf92480c2d3b167928c734b281167deae2e3669fc373748",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b6b3555-b78d-8122-6afc-7e87c170e4b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant_eq_halfIndex
    (b d : ℕ) [NeZero d]
    (hTwo : TwoUnitSquareModulusParameter d) :
    twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant b d hTwo =
      halfIndexAffineChowlaNonzeroModulusMajorant b d := by
  unfold twoUnitHalfIndexAffineChowlaNonzeroModulusMajorant
    halfIndexAffineChowlaNonzeroModulusMajorant
  apply congrArg
  apply Finset.sum_bij'
    (fun ell _hell => halfSquareModulusFrequency d ell)
    (fun k _hk => doubledSquareModulusFrequency d k)
  · intro ell hell
    have hell0 : ell ≠ 0 := by
      simpa [nonzeroSquareModulusFrequencySet] using hell
    have hhalf0 :=
      (halfSquareModulusFrequency_ne_zero_iff d hTwo ell).2 hell0
    simpa [nonzeroSquareModulusFrequencySet] using hhalf0
  · intro k hk
    have hk0 : k ≠ 0 := by
      simpa [nonzeroSquareModulusFrequencySet] using hk
    have hdouble0 :=
      (doubledSquareModulusFrequency_ne_zero_iff d hTwo k).2 hk0
    simpa [nonzeroSquareModulusFrequencySet] using hdouble0
  · intro ell _hell
    exact doubled_halfSquareModulusFrequency d hTwo ell
  · intro k _hk
    exact half_doubledSquareModulusFrequency d hTwo k
  · intro ell _hell
    exact
      twoUnitHalfIndexAffineChowlaFrequencyMajorant_eq_half
        b d hTwo ell

/-- Endpoint contribution from square-modulus parameters on which two is a
unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoUnitSplit.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `791e4238fb1bb06bed50920b4787f79f26e49705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
