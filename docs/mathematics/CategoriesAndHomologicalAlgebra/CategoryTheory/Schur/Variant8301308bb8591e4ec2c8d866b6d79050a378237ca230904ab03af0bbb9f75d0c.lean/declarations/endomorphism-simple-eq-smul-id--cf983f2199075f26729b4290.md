# endomorphism_simple_eq_smul_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b42bcc9-8429-fa7f-ba20-d7d5dd4c9b32",
  "kind": "theorem",
  "lexical_name": "endomorphism_simple_eq_smul_id",
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
  "slug": "endomorphism-simple-eq-smul-id--cf983f2199075f26729b4290",
  "source": {
    "blob": "0ebf03f3f1a2671f7da2cc20b8ad18fb5cb92d14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf983f2199075f26729b42901f9e48e2788e90f65a831f93033613160a292840",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b42bcc9-8429-fa7f-ba20-d7d5dd4c9b32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endomorphism_simple_eq_smul_id {X : C} [Simple X] [FiniteDimensional 𝕜 (X ⟶ X)]
    (f : X ⟶ X) : ∃ c : 𝕜, c • 𝟙 X = f :=
  (finrank_eq_one_iff_of_nonzero' (𝟙 X) (id_nonzero X)).mp (finrank_endomorphism_simple_eq_one 𝕜 X)
    f

/-- Endomorphisms of a simple object form a field if they are finite dimensional.
This can't be an instance as `𝕜` would be undetermined.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant8301308bb8591e4ec2c8d866b6d79050a378237ca230904ab03af0bbb9f75d0c.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ebf03f3f1a2671f7da2cc20b8ad18fb5cb92d14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
