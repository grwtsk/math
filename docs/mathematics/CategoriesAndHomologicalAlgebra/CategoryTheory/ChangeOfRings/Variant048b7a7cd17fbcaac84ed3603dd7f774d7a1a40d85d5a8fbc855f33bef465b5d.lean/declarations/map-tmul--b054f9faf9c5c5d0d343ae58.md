# map_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e36f05e12ae3450dd59e7fb5ad2ce5286944d95",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93fcf1be-61b0-62ee-effd-0f4e16e1010e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa825aa3-be6d-4518-2376-f62fe20c4d71",
  "kind": "theorem",
  "lexical_name": "map_tmul",
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
  "slug": "map-tmul--b054f9faf9c5c5d0d343ae58",
  "source": {
    "blob": "0e36f05e12ae3450dd59e7fb5ad2ce5286944d95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b054f9faf9c5c5d0d343ae58dc66bf0444fea61d73e3201b52a311c31621bc90",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa825aa3-be6d-4518-2376-f62fe20c4d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_tmul {M M' : ModuleCat.{v} R} (g : M ⟶ M') (s : S) (m : M) :
    (extendScalars f).map g (s⊗ₜ[R,f]m) = s⊗ₜ[R,f]g m :=
  rfl
#align category_theory.Module.extend_scalars.map_tmul CategoryTheory.ModuleCat.ExtendScalars.map_tmul

end ExtendScalars

namespace CoextendScalars

variable {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S)

section Unbundled

variable (M : Type v) [AddCommMonoid M] [Module R M]

-- mathport name: exprS'
-- We use `S'` to denote `S` viewed as `R`-module, via the map `f`.
-- Porting note: this seems to cause problems related to lack of reducibility
-- local notation "S'" => (restrictScalars f).obj ⟨S⟩

/-- Given an `R`-module M, consider Hom(S, M) -- the `R`-linear maps between S (as an `R`-module by
 means of restriction of scalars) and M. `S` acts on Hom(S, M) by `s • g = x ↦ g (x • s)`
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e36f05e12ae3450dd59e7fb5ad2ce5286944d95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
