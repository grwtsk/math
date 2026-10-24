# RepresentationExactness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b15db078dcbb854074e409098f3ef0ae57cf673535a76fd65ff28c9a0420400b",
  "kind": "inductive",
  "lexical_name": "RepresentationExactness",
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
  "slug": "representationexactness--b9ab8011a70963a3208fbec6",
  "source": {
    "blob": "f22e6c69e75eb70870c8f64dd6101bf30bca4b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A4fbdb003817c56c2/Variantf45ac043eac593f371364e60e90c3a03ef255190487464fbb7c1e42e4e0a8344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9ab8011a70963a3208fbec6970516c34c13cff477941224bd7cc1d736a9d467",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A4fbdb003817c56c2/Variantf45ac043eac593f371364e60e90c3a03ef255190487464fbb7c1e42e4e0a8344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b15db078dcbb854074e409098f3ef0ae57cf673535a76fd65ff28c9a0420400b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RepresentationExactness
  | definitional
  | exactIsomorphism
  | losslessEncoding
  | faithfulRepresentation
  | soundAbstraction
  | certifiedApproximation
  | illustrative
  deriving DecidableEq, Inhabited

/-- One semantic invariant claimed to survive a representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A4fbdb003817c56c2/Variantf45ac043eac593f371364e60e90c3a03ef255190487464fbb7c1e42e4e0a8344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A4fbdb003817c56c2/Variantf45ac043eac593f371364e60e90c3a03ef255190487464fbb7c1e42e4e0a8344.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f22e6c69e75eb70870c8f64dd6101bf30bca4b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
