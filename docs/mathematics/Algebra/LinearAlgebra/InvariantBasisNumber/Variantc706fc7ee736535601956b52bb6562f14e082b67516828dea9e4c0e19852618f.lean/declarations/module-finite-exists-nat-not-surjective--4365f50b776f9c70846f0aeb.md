# Module.Finite.exists_nat_not_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edcc750e-6c45-4762-531c-058b6946526d",
  "kind": "theorem",
  "lexical_name": "Module.Finite.exists_nat_not_surjective",
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
  "slug": "module-finite-exists-nat-not-surjective--4365f50b776f9c70846f0aeb",
  "source": {
    "blob": "ceb5bd7b871f85f09a119797f3c2e1a0e60d3881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 204,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4365f50b776f9c70846f0aeb5d27afac1d3d5342295a93f38d33973281e8eedd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edcc750e-6c45-4762-531c-058b6946526d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.Finite.exists_nat_not_surjective [RankCondition R] (M) [AddCommMonoid M] [Module R M]
    [Module.Finite R M] : ∃ n : ℕ, ∀ f : M →ₗ[R] (Fin n → R), ¬Surjective f :=
  have ⟨n, f, hf⟩ := Module.Finite.exists_fin' R M
  ⟨n + 1, fun g hg ↦ by simpa using le_of_fin_surjective R (g ∘ₗ f) (hg.comp hf)⟩

/-- By the universal property for free modules, any surjective map `(Fin n → R) →ₗ[R] (Fin m → R)`
has an injective splitting `(Fin m → R) →ₗ[R] (Fin n → R)`
from which the strong rank condition gives the necessary inequality for the rank condition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceb5bd7b871f85f09a119797f3c2e1a0e60d3881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
