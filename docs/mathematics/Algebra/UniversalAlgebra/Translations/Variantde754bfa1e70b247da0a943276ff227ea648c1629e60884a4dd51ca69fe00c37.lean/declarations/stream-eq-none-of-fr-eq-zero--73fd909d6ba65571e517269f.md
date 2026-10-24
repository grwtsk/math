# stream_eq_none_of_fr_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b65994d6484a3d533198354aaad6574b7ae99e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5640220-f338-b832-9526-c7b6dcce12c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0e8e9b0-2a21-dec4-ef05-6a8a9485a372",
  "kind": "theorem",
  "lexical_name": "stream_eq_none_of_fr_eq_zero",
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
  "slug": "stream-eq-none-of-fr-eq-zero--73fd909d6ba65571e517269f",
  "source": {
    "blob": "38b65994d6484a3d533198354aaad6574b7ae99e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 66,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73fd909d6ba65571e517269f0fb4a60a7ddf92f02cd393f1ac74a7329309172e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0e8e9b0-2a21-dec4-ef05-6a8a9485a372`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stream_eq_none_of_fr_eq_zero {ifp_n : IntFractPair K}
    (stream_nth_eq : IntFractPair.stream v n = some ifp_n) (nth_fr_eq_zero : ifp_n.fr = 0) :
    IntFractPair.stream v (n + 1) = none := by
  cases' ifp_n with _ fr
  change fr = 0 at nth_fr_eq_zero
  simp [IntFractPair.stream, stream_nth_eq, nth_fr_eq_zero]
#align generalized_continued_fraction.int_fract_pair.stream_eq_none_of_fr_eq_zero GeneralizedContinuedFraction.IntFractPair.stream_eq_none_of_fr_eq_zero

/-- Gives a recurrence to compute the `n + 1`th value of the sequence of integer and fractional
parts of a value in case of termination.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Translations/Variantde754bfa1e70b247da0a943276ff227ea648c1629e60884a4dd51ca69fe00c37.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b65994d6484a3d533198354aaad6574b7ae99e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
