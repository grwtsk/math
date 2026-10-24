# UnknownFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7bec5c0578d9fdc83aba9d4e4e41dd1c5c92003eea954979b279f03b9f02b6d",
  "kind": "structure",
  "lexical_name": "UnknownFrontier",
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
  "slug": "unknownfrontier--4dacb4a6f7b470c081b7bbd1",
  "source": {
    "blob": "357d1970d677d8929c9011a00ca3908f2da846ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dacb4a6f7b470c081b7bbd179674ef49f8528435afbddfe67c875d70cc210b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7bec5c0578d9fdc83aba9d4e4e41dd1c5c92003eea954979b279f03b9f02b6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UnknownFrontier
    (cut : EvidenceCut) where
  obligations : Array (UnknownObligation cut)
  openIds : Finset Nat
  blockedIds : Finset Nat
  dependencyClosure :
    ∀ downstream upstream : Fin obligations.size,
      UnknownDependsOn
        obligations[downstream]
        obligations[upstream] →
      obligations[upstream].id ∈ openIds →
      obligations[downstream].id ∈ blockedIds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357d1970d677d8929c9011a00ca3908f2da846ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
