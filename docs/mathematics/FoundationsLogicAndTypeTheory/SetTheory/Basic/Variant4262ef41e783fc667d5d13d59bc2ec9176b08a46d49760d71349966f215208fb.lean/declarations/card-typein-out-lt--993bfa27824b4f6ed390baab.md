# card_typein_out_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93cf4b7b-e500-7d45-1de1-31ca122914aa",
  "kind": "theorem",
  "lexical_name": "card_typein_out_lt",
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
  "slug": "card-typein-out-lt--993bfa27824b4f6ed390baab",
  "source": {
    "blob": "adac847c6d27de399acd85f231e0beb94f8e1a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1449,
    "line": 1444,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:993bfa27824b4f6ed390baabffbd503791038740195a37bc5cc04b0389a5504b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93cf4b7b-e500-7d45-1de1-31ca122914aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1444–1449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_typein_out_lt (c : Cardinal) (x : c.ord.out.α) :
    card (@typein _ (· < ·) (isWellOrder_out_lt _) x) < c := by
  rw [← lt_ord]
  apply typein_lt_self
#align cardinal.card_typein_out_lt Cardinal.card_typein_out_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant4262ef41e783fc667d5d13d59bc2ec9176b08a46d49760d71349966f215208fb.lean#L1444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adac847c6d27de399acd85f231e0beb94f8e1a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
