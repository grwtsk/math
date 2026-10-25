# lratProofToString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3f4c336cfb99c1ffbca348763e1ebc422ae7cac55599273535eb8e8443e3dbe",
  "kind": "def",
  "lexical_name": "lratProofToString",
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
  "slug": "lratprooftostring--89529e4fe9a0f6510d97efdb",
  "source": {
    "blob": "0d506021748294d1cbdde16ad24e317ddd734158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 307,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89529e4fe9a0f6510d97efdb2bc6f5bf39ae597b161800a02dd81c713e45835e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3f4c336cfb99c1ffbca348763e1ebc422ae7cac55599273535eb8e8443e3dbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lratProofToString (proof : Array IntAction) : String :=
  proof.foldl (init := "") (· ++ serialize · ++ "\n")
where
  serialize (a : IntAction) : String :=
    match a with
    | .addEmpty id hints =>
      s!"{id} 0 {serializeIdList hints}0"
    | .addRup id c hints =>
      s!"{id} {serializeClause c}0 {serializeIdList hints}0"
    | .addRat id c _ rupHints ratHints =>
      s!"{id} {serializeClause c}0 {serializeIdList rupHints}{serializeRatHints ratHints}0"
    | .del ids =>
      -- Note: 1 is not the actual step id but step ids don't matter for deletes
      s!"1 d {serializeIdList ids}0"

  serializeIdList (ids : Array Nat) : String :=
    ids.foldl (init := "") (· ++ s!"{·} ")

  serializeClause (clause : Array Int) : String :=
    clause.foldl (init := "") (· ++ s!"{·} ")

  serializeRatHint (hint : Nat × Array Nat) : String :=
    s!"-{hint.fst} {serializeIdList hint.snd}"

  serializeRatHints (hints : Array (Nat × Array Nat)) : String :=
    hints.foldl (init := "") (· ++ serializeRatHint ·)

/--
Serialize `proof` into the binary LRAT format as a `ByteArray`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant14a27d543ae4812102c78fc1850c459b15e5ccb4fc15d3f83f850f7cc2fca0a0.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d506021748294d1cbdde16ad24e317ddd734158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
