# homogeneousSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b4b75bca8f1ea2150982b0b0c22a5f56086338c2526dc3c921bc09a4aff8768",
  "kind": "def",
  "lexical_name": "homogeneousSubmodule",
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
  "slug": "homogeneoussubmodule--9f0d40b2d222bac5808d7f7c",
  "source": {
    "blob": "e0d6bc98efe7e22fe10261e873df0a774f789444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 75,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantb46baa1b5b08b9e337e4be00e1d9337e505b80270e1acda886203441c959448f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f0d40b2d222bac5808d7f7cb40fe740bbcb50bc7a9f80c6486328e8917a457c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Homogeneous/Variantb46baa1b5b08b9e337e4be00e1d9337e505b80270e1acda886203441c959448f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b4b75bca8f1ea2150982b0b0c22a5f56086338c2526dc3c921bc09a4aff8768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homogeneousSubmodule (n : ℕ) : Submodule R (MvPolynomial σ R) where
  carrier := { x | x.IsHomogeneous n }
  smul_mem' r a ha c hc := by
    rw [coeff_smul] at hc
    apply ha
    intro h
    apply hc
    rw [h]
    exact smul_zero r
  zero_mem' _ hd := False.elim (hd <| coeff_zero _)
  add_mem' {a b} ha hb c hc := by
    rw [coeff_add] at hc
    obtain h | h : coeff c a ≠ 0 ∨ coeff c b ≠ 0 := by
      contrapose! hc
      simp only [hc, add_zero]
    · exact ha h
    · exact hb h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Homogeneous/Variantb46baa1b5b08b9e337e4be00e1d9337e505b80270e1acda886203441c959448f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantb46baa1b5b08b9e337e4be00e1d9337e505b80270e1acda886203441c959448f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0d6bc98efe7e22fe10261e873df0a774f789444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
