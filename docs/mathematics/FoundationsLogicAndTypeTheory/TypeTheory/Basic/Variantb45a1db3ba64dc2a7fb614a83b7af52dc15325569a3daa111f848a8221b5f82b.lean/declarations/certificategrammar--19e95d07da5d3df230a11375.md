# certificateGrammar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0810ccfcbd8cfcfa68a5f50c4c892adadafce409cfa352cc9a358655d8fab3a",
  "kind": "def",
  "lexical_name": "certificateGrammar",
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
  "slug": "certificategrammar--19e95d07da5d3df230a11375",
  "source": {
    "blob": "b94ff40f11346fd563fcc348adfe864a9941a850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19e95d07da5d3df230a11375ab382bce58661ba76fd73b369032a4ec4f30fad3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0810ccfcbd8cfcfa68a5f50c4c892adadafce409cfa352cc9a358655d8fab3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def certificateGrammar (certificate : Value) : Bool :=
  exactKeys ["schema", "plan_digest", "objects", "source", "destination", "archive",
    "preservation", "raw_sources", "occurrences", "outputs"] certificate &&
  match getArray "objects" certificate, getArray "raw_sources" certificate,
      getArray "occurrences" certificate, getArray "outputs" certificate with
  | some os, some rs, some cs, some xs =>
      os.all (fun row => exactKeys ["bytes"] row &&
        match getString "bytes" row with
        | some s => lowerHex s && decide (s.length % 2 = 0)
        | _ => false) &&
      (["source", "destination", "archive", "preservation"].all fun key =>
        match field key certificate with
        | some row => exactKeys ["root", "exists", "directories", "files"] row
        | _ => false) &&
      rs.all (exactKeys ["root", "exists", "directories", "files"]) &&
      cs.all (exactKeys ["origin", "source_root", "source_path", "target_area", "target", "object"]) &&
      xs.all (exactKeys ["area", "path", "object"])
  | _, _, _, _ => false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94ff40f11346fd563fcc348adfe864a9941a850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
