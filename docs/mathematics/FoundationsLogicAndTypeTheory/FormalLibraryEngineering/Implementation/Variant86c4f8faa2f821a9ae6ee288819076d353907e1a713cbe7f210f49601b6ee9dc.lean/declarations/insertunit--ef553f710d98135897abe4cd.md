# insertUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c584691b96f78378e7ede3fb6448edde0bd88e889b2a8b45601da79504379f71",
  "kind": "def",
  "lexical_name": "insertUnit",
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
  "slug": "insertunit--ef553f710d98135897abe4cd",
  "source": {
    "blob": "e39db78893de5fadc3b6b5de70d7d1370645e196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant86c4f8faa2f821a9ae6ee288819076d353907e1a713cbe7f210f49601b6ee9dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef553f710d98135897abe4cd28d07ee80dd4617b03e017e214e760e1e3e571a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant86c4f8faa2f821a9ae6ee288819076d353907e1a713cbe7f210f49601b6ee9dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c584691b96f78378e7ede3fb6448edde0bd88e889b2a8b45601da79504379f71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def insertUnit : Array (Literal (PosFin n)) × Array Assignment × Bool →
    Literal (PosFin n) → Array (Literal (PosFin n)) × Array Assignment × Bool :=
  fun (units, assignments, foundContradiction) (l, b) =>
    let curAssignment := assignments[l.1]!
    if hasAssignment b curAssignment then
      (units, assignments, foundContradiction)
    else
      let units := units.push (l, b)
      let assignments := assignments.modify l (addAssignment b)
      let foundContradiction := foundContradiction || curAssignment != unassigned
      (units, assignments, foundContradiction)

/--
Returns an updated formula f and a bool which indicates whether a contradiction was found in the
process of updating f.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant86c4f8faa2f821a9ae6ee288819076d353907e1a713cbe7f210f49601b6ee9dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant86c4f8faa2f821a9ae6ee288819076d353907e1a713cbe7f210f49601b6ee9dc.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39db78893de5fadc3b6b5de70d7d1370645e196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
