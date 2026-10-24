# HasEigenvalue.exists_hasEigenvector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a11b8c84-8d26-9bd6-5f50-45ac3a4d2d64",
  "kind": "theorem",
  "lexical_name": "HasEigenvalue.exists_hasEigenvector",
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
  "slug": "haseigenvalue-exists-haseigenvector--484b45f65955775a0531e9da",
  "source": {
    "blob": "bafa19048712ede4c1b43dd2edf99eba15018a1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:484b45f65955775a0531e9dade16e9e792d10e31fe74af2d1bca7298a2b0f935",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a11b8c84-8d26-9bd6-5f50-45ac3a4d2d64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasEigenvalue.exists_hasEigenvector {f : End R M} {μ : R} (hμ : f.HasEigenvalue μ) :
    ∃ v, f.HasEigenvector μ v :=
  Submodule.exists_mem_ne_zero_of_ne_bot hμ
#align module.End.has_eigenvalue.exists_has_eigenvector Module.End.HasEigenvalue.exists_hasEigenvector

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafa19048712ede4c1b43dd2edf99eba15018a1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
