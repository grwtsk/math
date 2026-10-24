# sectionOfRetractionKerToTensorAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e21fcd585cf9bd81de2129e9854c122c71c74a48afe3468db3590e4c037bc9dc",
  "kind": "def",
  "lexical_name": "sectionOfRetractionKerToTensorAux",
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
  "slug": "sectionofretractionkertotensoraux--43f5ee22d7f9fdbe33ceffbd",
  "source": {
    "blob": "35afb79ea726356586d546a4de1b8fd31ec5b6fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 179,
    "path": "GRWTSK/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43f5ee22d7f9fdbe33ceffbd68935837246b64bd01aa3a5f79ff4493660c6022",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e21fcd585cf9bd81de2129e9854c122c71c74a48afe3468db3590e4c037bc9dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sectionOfRetractionKerToTensorAux : S →ₐ[R] P where
  toFun x := σ x - l (1 ⊗ₜ .D _ _ (σ x))
  map_one' := by simp [sectionOfRetractionKerToTensorAux_prop l hl (σ 1) 1 (by simp [hσ])]
  map_mul' a b := by
    have (x y) : (l x).1 * (l y).1 = 0 := by
      rw [← Ideal.mem_bot, ← hf', pow_two]; exact Ideal.mul_mem_mul (l x).2 (l y).2
    simp only [sectionOfRetractionKerToTensorAux_prop l hl (σ (a * b)) (σ a * σ b) (by simp [hσ]),
      Derivation.leibniz, tmul_add, tmul_smul, map_add, map_smul, Submodule.coe_add,
      SetLike.val_smul, smul_eq_mul, mul_sub, sub_mul, this, sub_zero]
    ring
  map_add' a b := by
    simp only [sectionOfRetractionKerToTensorAux_prop l hl (σ (a + b)) (σ a + σ b) (by simp [hσ]),
      map_add, tmul_add, Submodule.coe_add, add_sub_add_comm]
  map_zero' := by simp [sectionOfRetractionKerToTensorAux_prop l hl (σ 0) 0 (by simp [hσ])]
  commutes' r := by
    simp [sectionOfRetractionKerToTensorAux_prop l hl
      (σ (algebraMap R S r)) (algebraMap R P r) (by simp [hσ, ← IsScalarTower.algebraMap_apply])]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35afb79ea726356586d546a4de1b8fd31ec5b6fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
