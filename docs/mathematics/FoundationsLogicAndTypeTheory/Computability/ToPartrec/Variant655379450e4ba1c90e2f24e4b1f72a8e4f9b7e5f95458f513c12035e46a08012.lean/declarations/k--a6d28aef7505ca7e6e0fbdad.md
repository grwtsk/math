# K'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75cff5377788628269dcdcc0e40fc629320ccd826d97095a62f1c1f139590bd7",
  "kind": "inductive",
  "lexical_name": "K'",
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
  "slug": "k--a6d28aef7505ca7e6e0fbdad",
  "source": {
    "blob": "c99705ed18c92e83219c09ab347bf368539512b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 182,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6d28aef7505ca7e6e0fbdad61b354d5c29846d35932dbf382045c5ee9213315",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75cff5377788628269dcdcc0e40fc629320ccd826d97095a62f1c1f139590bd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive K'
  | main
  | rev
  | aux
  | stack
  deriving DecidableEq, Inhabited

open K'

/-- Continuations as in `ToPartrec.Cont` but with the data removed. This is done because we want
the set of all continuations in the program to be finite (so that it can ultimately be encoded into
the finite state machine of a Turing machine), but a continuation can handle a potentially infinite
number of data values during execution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variant655379450e4ba1c90e2f24e4b1f72a8e4f9b7e5f95458f513c12035e46a08012.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99705ed18c92e83219c09ab347bf368539512b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
