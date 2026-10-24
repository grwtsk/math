# changed_collision_coordinate_rejected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bb4d5d03b1c1171b9efe863bfa0b38e377f87cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12f5b28e-3069-802e-7e38-761424b50c0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:facb7ca1-609f-97b5-e6bd-641b142f3d23",
  "kind": "theorem",
  "lexical_name": "changed_collision_coordinate_rejected",
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
  "slug": "changed-collision-coordinate-rejected--be3c832f2680709190ddfe9a",
  "source": {
    "blob": "2bb4d5d03b1c1171b9efe863bfa0b38e377f87cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 28,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantcf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be3c832f2680709190ddfe9a7b88040cfa6a85c90212051b982a7c26ec9dbda6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobianConjecture/Variantcf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:facb7ca1-609f-97b5-e6bd-641b142f3d23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changed_collision_coordinate_rejected :
    alpogeFable ![1, -3 / 2, 7] ≠ target := by
  intro h
  have := congrFun h 2
  norm_num [alpogeFable, alpogeFable₃, target, Matrix.cons_val_two] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variantcf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantcf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bb4d5d03b1c1171b9efe863bfa0b38e377f87cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
