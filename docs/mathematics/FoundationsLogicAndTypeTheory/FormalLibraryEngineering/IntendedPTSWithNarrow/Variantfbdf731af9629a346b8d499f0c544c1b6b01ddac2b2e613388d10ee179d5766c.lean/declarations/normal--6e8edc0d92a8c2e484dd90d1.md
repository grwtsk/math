# normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25c0ea57-7082-701e-0826-3752dd992972",
  "kind": "theorem",
  "lexical_name": "normal",
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
  "slug": "normal--6e8edc0d92a8c2e484dd90d1",
  "source": {
    "blob": "fbc159bd430e2ee4f9f43417d1952b3503e17b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e8edc0d92a8c2e484dd90d1c18cba4e6a27e0008998ae59c1a6caf4bd867db3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25c0ea57-7082-701e-0826-3752dd992972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal {type : Expr Bool} (typed : BaseArrowType type) : Normal type := by
  induction typed with
  | base => exact Normal.sort false
  | arrow domain codomain ihDomain ihCodomain =>
      intro target reduced
      cases reduced with
      | pi_domain reduced => exact ihDomain _ reduced
      | pi_body reduced => exact ihCodomain _ reduced

/-- Formation of every grammar type in every actual valid source context. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntendedPTSWithNarrow/Variantfbdf731af9629a346b8d499f0c544c1b6b01ddac2b2e613388d10ee179d5766c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbc159bd430e2ee4f9f43417d1952b3503e17b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
