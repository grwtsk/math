# encodeFieldRound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31c4216d2142be29160d08a2835412ad10f080067c3ea529b2f6e0c8067013b8",
  "kind": "def",
  "lexical_name": "encodeFieldRound",
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
  "slug": "encodefieldround--68f8da38706556c93174e045",
  "source": {
    "blob": "ddc851be4cf6887a35cb8a7cdb2f79f9f97270b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 77,
    "path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68f8da38706556c93174e04550c72b99d34a5c1c87477b9f63985649e39515a1",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31c4216d2142be29160d08a2835412ad10f080067c3ea529b2f6e0c8067013b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def encodeFieldRound
    (E : BitMatrix.FiniteField.Encoding F m n)
    (R : BitMatrix.FiniteField.Round.FieldRound F) :
    BitMatrix m n ≃ BitMatrix m n :=
  transportToMatrix E R.toEquiv

/--
An encoded field round is bijective because it is an equivalence transport.
No SAC, differential-uniformity, or branch-number conclusion is attached.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/FiniteBooleanDerivativeAndFieldData/Variant5dcc141e444c404b/FieldRoundMatrixConjugacy.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddc851be4cf6887a35cb8a7cdb2f79f9f97270b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
