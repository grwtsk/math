# exampleRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ad0ecfa06ab117c5bf9362364be16cf93acdc5c5a98e96ac42c9dc977c5c45c",
  "kind": "def",
  "lexical_name": "exampleRelation",
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
  "slug": "examplerelation--8ea9dd6671f2edfce9c2df98",
  "source": {
    "blob": "c4d06a05f04c058d90f6098980b412e6e6f8f1a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1187,
    "line": 1173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ea9dd6671f2edfce9c2df989482a9b29403ab252a4ff668e6d92ba22d5fafc3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ad0ecfa06ab117c5bf9362364be16cf93acdc5c5a98e96ac42c9dc977c5c45c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1173–1187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleRelation : ZetaTraceZKPRelation where
  statement := examplePublicStatement
  witness := examplePrivateWitness
  publicMatchesWitness := True
  sharedLocusAdmissible :=
    exampleSharedTraceLocus.admissible.errorBelowMargin
  groupReductionOK := trivial
  connesBridgeOK := trivial
  prismaticOK := trivial
  analyticPrimeBridgeOK := ⟨rfl, rfl⟩
  functionalEquationOK := trivial
  ellipticTorsionOK := trivial
  ellipticTorsionNotFromFieldHomology := trivial

/-- The example relation reduces to its certified total-error inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean#L1173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d06a05f04c058d90f6098980b412e6e6f8f1a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
