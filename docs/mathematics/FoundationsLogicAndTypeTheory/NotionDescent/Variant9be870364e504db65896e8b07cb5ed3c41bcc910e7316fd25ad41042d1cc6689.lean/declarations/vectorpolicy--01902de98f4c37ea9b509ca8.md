# vectorPolicy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0222473a4ad6297d76078923c54ebdeb0d52c99252f9507f7beb0bbf31ed3a82",
  "kind": "def",
  "lexical_name": "vectorPolicy",
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
  "slug": "vectorpolicy--01902de98f4c37ea9b509ca8",
  "source": {
    "blob": "d031cf8520ba784a8558cdb7a1215107ee8e1861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01902de98f4c37ea9b509ca8ee8aa172a5bde117ba04101a6283b8eba0a1af9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0222473a4ad6297d76078923c54ebdeb0d52c99252f9507f7beb0bbf31ed3a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vectorPolicy : ObservationPolicy (Bool × Bool) Unit (Bool × Bool) where
  cost := fun _ ↦ 1
  observe := fun _ x ↦ x

/-- At budget zero no test is affordable, so every pair is observationally equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d031cf8520ba784a8558cdb7a1215107ee8e1861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
