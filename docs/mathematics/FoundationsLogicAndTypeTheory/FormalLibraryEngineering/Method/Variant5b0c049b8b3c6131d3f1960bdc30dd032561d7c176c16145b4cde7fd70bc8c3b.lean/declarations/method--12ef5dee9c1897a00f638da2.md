# Method

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0003a536ee514a2b77a271c20fb8a2120159d7bfa42c6f26f351ba0cd848c301",
  "kind": "inductive",
  "lexical_name": "Method",
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
  "slug": "method--12ef5dee9c1897a00f638da2",
  "source": {
    "blob": "6e187bb0b7fdf79585e149f464aefa49cb482e8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Method/Variant5b0c049b8b3c6131d3f1960bdc30dd032561d7c176c16145b4cde7fd70bc8c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12ef5dee9c1897a00f638da226527a7733a4bd7295c7b3a5f7ede37f4d060e4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Method/Variant5b0c049b8b3c6131d3f1960bdc30dd032561d7c176c16145b4cde7fd70bc8c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0003a536ee514a2b77a271c20fb8a2120159d7bfa42c6f26f351ba0cd848c301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Method where
  /--
  Access control list for a resource.
  Source: https://www.rfc-editor.org/rfc/rfc3744#section-8.1
  -/
  | acl

  /--
  Apply a label to a version-controlled resource baseline.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-12.6
  -/
  | baselineControl

  /--
  Bind a resource to an additional URI path.
  Source: https://www.rfc-editor.org/rfc/rfc5842#section-4
  -/
  | bind

  /--
  Check in a checked-out version-controlled resource.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-9.4
  -/
  | checkin

  /--
  Check out a version-controlled resource for modification.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-8.8
  -/
  | checkout

  /--
  Establish a tunnel to a server (often for TLS).
  Source: https://httpwg.org/specs/rfc9110.html#section-9.3.6
  -/
  | connect

  /--
  Copy a resource to a new URI.
  Source: https://www.rfc-editor.org/rfc/rfc4918#section-9.8
  -/
  | copy

  /--
  Remove a resource.
  Source: https://httpwg.org/specs/rfc9110.html#section-9.3.5
  -/
  | delete

  /--
  Retrieve a resource.
  Source: https://httpwg.org/specs/rfc9110.html#section-9.3.1
  -/
  | get

  /--
  Retrieve headers for a resource, without the body.
  Source: https://httpwg.org/specs/rfc9110.html#section-9.3.2
  -/
  | head

  /--
  Apply a label to a version history.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-8.2
  -/
  | label

  /--
  Create a link relationship between resources.
  Source: https://www.rfc-editor.org/rfc/rfc2068#section-19.6.1.2
  -/
  | link

  /--
  Lock a resource to prevent concurrent modifications.
  Source: https://www.rfc-editor.org/rfc/rfc4918#section-9.10
  -/
  | lock

  /--
  Merge a version-controlled resource.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-11.2
  -/
  | merge

  /--
  Create a new activity resource.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-13.5
  -/
  | mkactivity

  /--
  Create a calendar collection.
  Source: https://www.rfc-editor.org/rfc/rfc4791#section-5.3.1
  -/
  | mkcalendar

  /--
  Create a collection resource (WebDAV directory).
  Source: https://www.rfc-editor.org/rfc/rfc4918#section-9.3
  -/
  | mkcol

  /--
  Create a redirect reference resource.
  Source: https://www.rfc-editor.org/rfc/rfc4437#section-6
  -/
  | mkredirectref

  /--
  Create a workspace resource.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-6.3
  -/
  | mkworkspace

  /--
  Move a resource to a new URI.
  Source: https://www.rfc-editor.org/rfc/rfc4918#section-9.9
  -/
  | move

  /--
  Describe communication options for a resource.
  Source: https://httpwg.org/specs/rfc9110.html#section-9.3.7
  -/
  | options

  /--
  Reorder members of a collection.
  Source: https://www.rfc-editor.org/rfc/rfc3648#section-7
  -/
  | orderpatch

  /--
  Apply partial modifications to a resource.
  Source: https://www.rfc-editor.org/rfc/rfc5789#section-2
  -/
  | patch

  /--
  Submit data to be processed (e.g., form submission).
  Source: https://httpwg.org/specs/rfc9110.html#section-9.3.3
  -/
  | post

  /--
  HTTP/2 connection preface (not used in application code).
  Source: https://www.rfc-editor.org/rfc/rfc9113#section-3.4
  -/
  | pri

  /--
  Retrieve properties of a resource (WebDAV).
  Source: https://www.rfc-editor.org/rfc/rfc4918#section-9.1
  -/
  | propfind

  /--
  Set or remove properties on a resource (WebDAV).
  Source: https://www.rfc-editor.org/rfc/rfc4918#section-9.2
  -/
  | proppatch

  /--
  Replace a resource with new data.
  Source: https://httpwg.org/specs/rfc9110.html#section-9.3.4
  -/
  | put

  /--
  Perform a safe query with a request body.
  Source: https://www.ietf.org/archive/id/draft-ietf-httpbis-safe-method-w-body-14.html#section-2
  -/
  | query

  /--
  Rebind a resource to a new URI path.
  Source: https://www.rfc-editor.org/rfc/rfc5842#section-6
  -/
  | rebind

  /--
  Retrieve a report on a resource.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-3.6
  -/
  | report

  /--
  Search a resource.
  Source: https://www.rfc-editor.org/rfc/rfc5323#section-2
  -/
  | search

  /--
  Perform a message loop-back test.
  Source: https://httpwg.org/specs/rfc9110.html#section-9.3.8
  -/
  | trace

  /--
  Remove a URI binding from a resource.
  Source: https://www.rfc-editor.org/rfc/rfc5842#section-5
  -/
  | unbind

  /--
  Undo a previous checkout of a version-controlled resource.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-4.5
  -/
  | uncheckout

  /--
  Remove a link relationship between resources.
  Source: https://www.rfc-editor.org/rfc/rfc2068#section-19.6.1.3
  -/
  | unlink

  /--
  Unlock a resource.
  Source: https://www.rfc-editor.org/rfc/rfc4918#section-9.11
  -/
  | unlock

  /--
  Update a version-controlled resource.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-7.1
  -/
  | update

  /--
  Update a redirect reference resource.
  Source: https://www.rfc-editor.org/rfc/rfc4437#section-7
  -/
  | updateredirectref

  /--
  Put a resource under version control.
  Source: https://www.rfc-editor.org/rfc/rfc3253#section-3.5
  -/
  | versionControl
deriving Repr, Inhabited, BEq, DecidableEq

namespace Method

/--
Converts a `String` into a `Method`. Returns `none` for unrecognized method strings.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Method/Variant5b0c049b8b3c6131d3f1960bdc30dd032561d7c176c16145b4cde7fd70bc8c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Method/Variant5b0c049b8b3c6131d3f1960bdc30dd032561d7c176c16145b4cde7fd70bc8c3b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e187bb0b7fdf79585e149f464aefa49cb482e8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
