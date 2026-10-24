# one_sided_coordinate_permutation_rejected

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
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4908f36f-f18d-65aa-9961-f65a515d4c6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1e6164c-d19b-bd4b-042e-f94ce4667a68",
  "kind": "theorem",
  "lexical_name": "one_sided_coordinate_permutation_rejected",
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
  "slug": "one-sided-coordinate-permutation-rejected--be3fdd5d9b2ceeba21604340",
  "source": {
    "blob": "2bb4d5d03b1c1171b9efe863bfa0b38e377f87cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 42,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantcf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be3fdd5d9b2ceeba216043408cc9b575cd5ad0a73d7203337b3d6ccea66a01df",
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

Occurrence: `result:c1e6164c-d19b-bd4b-042e-f94ce4667a68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sided_coordinate_permutation_rejected :
    alpogeFable ![-1 / 4, 0, 0] ≠ target := by
  intro h
  have := congrFun h 2
  norm_num [alpogeFable, alpogeFable₃, target, Matrix.cons_val_two] at this

/-- Determinants alone do not distinguish a Jacobian from its transpose. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobianConjecture/Variantcf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantcf987bab29b67564b31c4a1cf6fbecb9fb387d8d57f4fda2ec82bd2d5a16bd46.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bb4d5d03b1c1171b9efe863bfa0b38e377f87cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
