# bind₁_rename_expand_wittPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fa6da1b-b4b2-371f-dc7e-a7f79dcc59e2",
  "kind": "theorem",
  "lexical_name": "bind₁_rename_expand_wittPolynomial",
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
  "slug": "bind-rename-expand-wittpolynomial--721e70d264f98081cd968bb3",
  "source": {
    "blob": "1cc0432206657a0d0e63f24b6dfbf4bfcccf25e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 217,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:721e70d264f98081cd968bb3fe97f28ba210cc11612247a5323547fc62b0347d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fa6da1b-b4b2-371f-dc7e-a7f79dcc59e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind₁_rename_expand_wittPolynomial (Φ : MvPolynomial idx ℤ) (n : ℕ)
    (IH :
      ∀ m : ℕ,
        m < n + 1 →
          map (Int.castRingHom ℚ) (wittStructureInt p Φ m) =
            wittStructureRat p (map (Int.castRingHom ℚ) Φ) m) :
    bind₁ (fun b => rename (fun i => (b, i)) (expand p (W_ ℤ n))) Φ =
      bind₁ (fun i => expand p (wittStructureInt p Φ i)) (W_ ℤ n) := by
  apply MvPolynomial.map_injective (Int.castRingHom ℚ) Int.cast_injective
  simp only [map_bind₁, map_rename, map_expand, rename_expand, map_wittPolynomial]
  have key := (wittStructureRat_prop p (map (Int.castRingHom ℚ) Φ) n).symm
  apply_fun expand p at key
  simp only [expand_bind₁] at key
  rw [key]; clear key
  apply eval₂Hom_congr' rfl _ rfl
  rintro i hi -
  rw [wittPolynomial_vars, Finset.mem_range] at hi
  simp only [IH i hi]
#align bind₁_rename_expand_witt_polynomial bind₁_rename_expand_wittPolynomial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cc0432206657a0d0e63f24b6dfbf4bfcccf25e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
