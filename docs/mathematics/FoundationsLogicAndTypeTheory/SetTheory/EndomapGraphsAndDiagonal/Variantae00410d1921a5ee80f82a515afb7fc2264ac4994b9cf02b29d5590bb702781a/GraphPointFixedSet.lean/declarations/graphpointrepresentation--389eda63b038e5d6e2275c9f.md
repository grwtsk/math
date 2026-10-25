# graphPointRepresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76a201a1b2529e2031d340737ca86d953acb4037f6ae20b58cf3ae0288b02d83",
  "kind": "def",
  "lexical_name": "graphPointRepresentation",
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
  "slug": "graphpointrepresentation--389eda63b038e5d6e2275c9f",
  "source": {
    "blob": "1e9bdabbe976b1b89742488367aba415cc2d172f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:389eda63b038e5d6e2275c9f11da42a505dffee23c0c9ebab7ee2243b2e2a20e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76a201a1b2529e2031d340737ca86d953acb4037f6ae20b58cf3ae0288b02d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def graphPointRepresentation (Point : Type) :
    RepresentationRelation (CarrierProduct Point) (GraphPointRecord Point) where
  abstract record := (record.input, record.output)
  represents record semantic := (record.input, record.output) = semantic
  represents_iff _ _ := Iff.rfl

/-- Execute the graph-point constructor in record form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e9bdabbe976b1b89742488367aba415cc2d172f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
