# free_of_flat_of_finrank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f903ae5f-c62c-4975-edea-752eeb5a0c32",
  "kind": "theorem",
  "lexical_name": "free_of_flat_of_finrank_eq",
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
  "slug": "free-of-flat-of-finrank-eq--25715a70ac2a13f8f344a7b2",
  "source": {
    "blob": "1060639082082facdd4775b9cf03982490cab2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 422,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25715a70ac2a13f8f344a7b26ae13309460c7879257ae3661aca0a1fbd81d61c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f903ae5f-c62c-4975-edea-752eeb5a0c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[stacks 02M9] theorem free_of_flat_of_finrank_eq [Module.Finite R M] [Flat R M]
    (n : ℕ) (rk : ∀ P : MaximalSpectrum R, finrank (R ⧸ P.1) ((R ⧸ P.1) ⊗[R] M) = n) :
    Free R M :=
  have ⟨b⟩ := nonempty_basis_of_flat_of_finrank_eq R M n rk
  .of_basis b

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1060639082082facdd4775b9cf03982490cab2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
