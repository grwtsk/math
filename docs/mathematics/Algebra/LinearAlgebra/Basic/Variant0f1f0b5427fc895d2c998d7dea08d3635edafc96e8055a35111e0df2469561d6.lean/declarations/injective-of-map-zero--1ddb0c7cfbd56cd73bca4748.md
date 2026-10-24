# injective_of_map_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01394a3f-8b6f-6189-b2ef-f334cf4fb60d",
  "kind": "lemma",
  "lexical_name": "injective_of_map_zero",
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
  "slug": "injective-of-map-zero--1ddb0c7cfbd56cd73bca4748",
  "source": {
    "blob": "9645b989a209b907145a8aaefc766e42ac419797",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1174,
    "line": 1161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0f1f0b5427fc895d2c998d7dea08d3635edafc96e8055a35111e0df2469561d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ddb0c7cfbd56cd73bca4748dfe1b46e28c33df86d32cd0866557775ed7c3380",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0f1f0b5427fc895d2c998d7dea08d3635edafc96e8055a35111e0df2469561d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01394a3f-8b6f-6189-b2ef-f334cf4fb60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1161–1174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_of_map_zero {M M' N : Type*} [AddCommGroup M] [AddCommGroup M']
    [Module R M] [Module R M'] (f : M →ₗ[R] M') [IsLocalizedModule S f]
    [AddCommGroup N] [Module R N] {g : M' →ₗ[R] N} (H : ∀ m, g (f m) = 0 → f m = 0) :
    Function.Injective g := by
  refine IsLocalizedModule.injective_of_map_eq S f (fun hxy ↦ ?_)
  rw [← sub_eq_zero, ← map_sub]
  apply H
  simpa [sub_eq_zero]

variable {N N'} [AddCommMonoid N] [AddCommMonoid N'] [Module R N] [Module R N']
variable (g : N →ₗ[R] N') [IsLocalizedModule S g]

/-- A linear map `M →ₗ[R] N` gives a map between localized modules `Mₛ →ₗ[R] Nₛ`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0f1f0b5427fc895d2c998d7dea08d3635edafc96e8055a35111e0df2469561d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0f1f0b5427fc895d2c998d7dea08d3635edafc96e8055a35111e0df2469561d6.lean#L1161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9645b989a209b907145a8aaefc766e42ac419797` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
