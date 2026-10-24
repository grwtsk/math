# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc525baeb6824532232f90414ddb3990876bfe25d29e4c5f1ad248316c99f180",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--94203d0dc542c08f1f1bfc17",
  "source": {
    "blob": "f1d27f7e53fb296a43d932e7b277c319729efcb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 683,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant8dd6bc9d401c1ad573b453b10bbef53222c33f082828840c82e599f9e8f73521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94203d0dc542c08f1f1bfc1713c5adb67505d6756fad2c392ac7175dba77bd8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant8dd6bc9d401c1ad573b453b10bbef53222c33f082828840c82e599f9e8f73521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc525baeb6824532232f90414ddb3990876bfe25d29e4c5f1ad248316c99f180`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {x1 x2 x3 x4 x5 x6 x7 x8 : ℚ} :
    (3 * x4 - x3 - x2 - x1 : ℚ) < 0 →
    x5 - x4 < 0 →
    2 * (x5 - x4) < 0 →
    -x6 + x3 < 0 →
    -x6 + x2 < 0 →
    2 * (x6 - x5) < 0 →
    x8 - x7 < 0 →
    -x8 + x2 < 0 →
    -x8 + x7 - x5 + x1 < 0 →
    x7 - x5 < 0 →
    False := by
  intros; linarith

#guard_msgs in
/-- https://github.com/leanprover-community/mathlib4/issues/8875 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant8dd6bc9d401c1ad573b453b10bbef53222c33f082828840c82e599f9e8f73521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant8dd6bc9d401c1ad573b453b10bbef53222c33f082828840c82e599f9e8f73521.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d27f7e53fb296a43d932e7b277c319729efcb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
