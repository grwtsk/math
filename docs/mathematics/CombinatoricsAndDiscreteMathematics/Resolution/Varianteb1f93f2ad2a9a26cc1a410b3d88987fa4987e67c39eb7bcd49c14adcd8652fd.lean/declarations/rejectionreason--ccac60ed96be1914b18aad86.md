# RejectionReason

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42266c15fbe8582a5eb58c2eb24ccf31d25eb5334d62994d07312f4a20582d69",
  "kind": "inductive",
  "lexical_name": "RejectionReason",
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
  "slug": "rejectionreason--ccac60ed96be1914b18aad86",
  "source": {
    "blob": "357d1970d677d8929c9011a00ca3908f2da846ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccac60ed96be1914b18aad86765074d457b4674b8aa0432d4563d04a121d2e83",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42266c15fbe8582a5eb58c2eb24ccf31d25eb5334d62994d07312f4a20582d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RejectionReason
  | malformedTextDigest
  | contradictorySnapshots
  | duplicateIdentity
  | invalidRegistryReference
  | impossibleSpan
  | contradictoryAuthorityPolicy
  | invalidResourceBound
  | malformedProvenanceGraph
deriving DecidableEq, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357d1970d677d8929c9011a00ca3908f2da846ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
