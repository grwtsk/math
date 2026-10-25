# NamingSquare.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cc1a038e421dcc467e8709bed5b271bd278f056b6af0668bf8d66f3b85fde0d",
  "kind": "def",
  "lexical_name": "NamingSquare.Valid",
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
  "slug": "namingsquare-valid--a3962783e5c78c87f4bc25c1",
  "source": {
    "blob": "7ebdaac7abbfb4b6583d56c50a0dd614d474a818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/A6fd403b4a1bc87ad/Variantf77c79f5cc4e3ad5db926d95c27dd5fc41614e4042b28b98f472492e106edb74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3962783e5c78c87f4bc25c123f4de4b70445c33a93a77e6844341d22b017f5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/A6fd403b4a1bc87ad/Variantf77c79f5cc4e3ad5db926d95c27dd5fc41614e4042b28b98f472492e106edb74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cc1a038e421dcc467e8709bed5b271bd278f056b6af0668bf8d66f3b85fde0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NamingSquare.Valid (square : NamingSquare) : Prop :=
  square.origin.evidenceDigest = square.afterHorizontal.evidenceDigest ∧
  square.origin.evidenceDigest = square.afterVertical.evidenceDigest ∧
  square.origin.evidenceDigest = square.finish.evidenceDigest

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/A6fd403b4a1bc87ad/Variantf77c79f5cc4e3ad5db926d95c27dd5fc41614e4042b28b98f472492e106edb74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/A6fd403b4a1bc87ad/Variantf77c79f5cc4e3ad5db926d95c27dd5fc41614e4042b28b98f472492e106edb74.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebdaac7abbfb4b6583d56c50a0dd614d474a818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
