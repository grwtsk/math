# generalizedSchurMatrix_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9216ff4a8c89da7dc88ff19f5718f8d0c08b8d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:804f6aac-c96a-a7e7-6a4c-4bb0e1f551c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56fb8739-a911-b897-0ca3-ab68ead27129",
  "kind": "theorem",
  "lexical_name": "generalizedSchurMatrix_nonnegative",
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
  "slug": "generalizedschurmatrix-nonnegative--3c4f7b165226118694a14dd0",
  "source": {
    "blob": "a9216ff4a8c89da7dc88ff19f5718f8d0c08b8d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c4f7b165226118694a14dd0c49a23c940e7f4a9874b2440171cc16d759f51f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56fb8739-a911-b897-0ca3-ab68ead27129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generalizedSchurMatrix_nonnegative
    (D : GeneralizedInverseBlockRealization G) (u : κ → ℝ) :
    0 ≤ u ⬝ᵥ D.generalizedSchurMatrix.mulVec u := by
  rw [← D.schurForm_eq_generalizedSchurMatrix u u]
  exact D.blockSchurSolver.schurForm_nonnegative u

/-- Pure autonomous energy decomposes into explained generalized-inverse
provenance energy and the positive generalized Schur residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver/Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9216ff4a8c89da7dc88ff19f5718f8d0c08b8d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
