# alternatizeUncurryFin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d07df79aef371d7b73a3c4751c7bae6de0b86c7612a2257f77df52bd2080fd6",
  "kind": "def",
  "lexical_name": "alternatizeUncurryFin",
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
  "slug": "alternatizeuncurryfin--9f11a84bac8dc0252ca54357",
  "source": {
    "blob": "648ad6b0fe6f7f5b0212ae387a3c934ad12fbb99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f11a84bac8dc0252ca54357208d1e33b96f89fa6f28f38f213b7e231e492d0a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d07df79aef371d7b73a3c4751c7bae6de0b86c7612a2257f77df52bd2080fd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alternatizeUncurryFin (f : M →ₗ[R] M [⋀^Fin n]→ₗ[R] N) :
    M [⋀^Fin (n + 1)]→ₗ[R] N where
  toMultilinearMap :=
    ∑ p : Fin (n + 1), (-1) ^ (p : ℕ) • LinearMap.uncurryMid p (toMultilinearMapLM ∘ₗ f)
  map_eq_zero_of_eq' := by
    intro v i j hvij hij
    suffices ∑ k : Fin (n + 1), (-1) ^ (k : ℕ) • f (v k) (k.removeNth v) = 0 by simpa
    calc
      _ = (-1) ^ (i : ℕ) • f (v i) (i.removeNth v) + (-1) ^ (j : ℕ) • f (v j) (j.removeNth v) := by
        refine Fintype.sum_eq_add _ _ hij fun k ⟨hki, hkj⟩ ↦ ?_
        rcases exists_succAbove_eq hki.symm with ⟨i, rfl⟩
        rcases exists_succAbove_eq hkj.symm with ⟨j, rfl⟩
        rw [(f (v k)).map_eq_zero_of_eq _ hvij (ne_of_apply_ne _ hij), smul_zero]
      _ = 0 := by
        rw [hvij, neg_one_pow_smul_map_removeNth_add_eq_zero_of_eq] <;> assumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648ad6b0fe6f7f5b0212ae387a3c934ad12fbb99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
