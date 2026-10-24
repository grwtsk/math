# Jurisdiction.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9d1db85053bfd89ba4fc83826c5571a05d9621a18a9967fabcc327236b21d34",
  "kind": "structure",
  "lexical_name": "Jurisdiction.Valid",
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
  "slug": "jurisdiction-valid--ccedcc92878c9e11e098a3b4",
  "source": {
    "blob": "e1353b158dd2324d121f720c8a7c91bc9377854a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccedcc92878c9e11e098a3b4c478c3e985ffa5909672b9a0e2e30166e7978c70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9d1db85053bfd89ba4fc83826c5571a05d9621a18a9967fabcc327236b21d34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Jurisdiction.Valid
    (jurisdiction : Jurisdiction) : Prop where
  interface_valid :
    jurisdiction.interface.ValidFor jurisdiction.principal
  admitted_inputs :
    ∀ kind ∈ jurisdiction.interface.inputPointKinds,
      kind ∈ jurisdiction.admittedPointKinds
  admitted_outputs :
    ∀ kind ∈ jurisdiction.interface.outputPointKinds,
      kind ∈ jurisdiction.admittedPointKinds
  admitted_relations :
    ∀ family ∈ jurisdiction.interface.outputRelationFamilies,
      family ∈ jurisdiction.admittedRelationFamilies

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Jurisdiction/Variante783314d20e5d13fa8d6a716729cdc7aebeda42fb3c484bc2f03eee40113aa2c.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1353b158dd2324d121f720c8a7c91bc9377854a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
