# not_isProperPower_of_unit_integerValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef5d17de-09e8-6ac8-c4ba-690f34d55553",
  "kind": "theorem",
  "lexical_name": "not_isProperPower_of_unit_integerValue",
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
  "slug": "not-isproperpower-of-unit-integervalue--04f681a249edf880117fb1fb",
  "source": {
    "blob": "d5e736369b17dae2212c292f0ea7189a6904ed3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/GroupTheory/Words/IntegralHomologyPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04f681a249edf880117fb1fb5d88d44769c858d40eeafdaedef30cf32ebf013d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef5d17de-09e8-6ac8-c4ba-690f34d55553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isProperPower_of_unit_integerValue
    (h : IntegerCharacter G) {g : G}
    (hu : IsUnit (h g).toAdd) :
    ¬ IsProperPower g := by
  rintro ⟨r, n, hn, hr⟩
  have hdvd : (n : ℤ) ∣ (h g).toAdd :=
    exponent_dvd_integerValue h hr
  have hnunit : IsUnit (n : ℤ) := isUnit_of_dvd_unit hdvd hu
  have hnlarge : (2 : ℤ) ≤ (n : ℤ) := by exact_mod_cast hn
  rcases Int.isUnit_iff.mp hnunit with hpos | hneg
  · omega
  · omega

/-- An integer-unit image also excludes the group identity, since a
group homomorphism maps 1 to zero in additive notation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/GroupTheory/Words/IntegralHomologyPrimitive.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5e736369b17dae2212c292f0ea7189a6904ed3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
