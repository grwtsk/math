# mulOption_lt_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dbb378b-54d3-c2b0-88a7-cb2fead02a4f",
  "kind": "lemma",
  "lexical_name": "mulOption_lt_of_lt",
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
  "slug": "muloption-lt-of-lt--d3095f734f12cd25c010b66f",
  "source": {
    "blob": "7f3427722cfbb35fc0546f9e12da3ac18023e775",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant8d97badbc3ae0cf360a334a9b6ca8449e6f00b936284edf226777dbad172ba33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3095f734f12cd25c010b66fc0a5b348a8da60967fb1f9b460e6714c77ca8a50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant8d97badbc3ae0cf360a334a9b6ca8449e6f00b936284edf226777dbad172ba33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dbb378b-54d3-c2b0-88a7-cb2fead02a4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mulOption_lt_of_lt (hy : y.Numeric) (ihxy : IH1 x y) (ihyx : IH1 y x) (i j k l)
    (h : x.moveLeft i < x.moveLeft j) :
    (⟦mulOption x y i k⟧ : Game) < -⟦mulOption x (-y) j l⟧ :=
  mulOption_lt_iff_P1.2 <| P1_of_lt (P3_of_ih hy ihyx j k l) <| ((P24_of_ih ihxy i j).2 h).1 k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant8d97badbc3ae0cf360a334a9b6ca8449e6f00b936284edf226777dbad172ba33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiplication/Variant8d97badbc3ae0cf360a334a9b6ca8449e6f00b936284edf226777dbad172ba33.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f3427722cfbb35fc0546f9e12da3ac18023e775` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
