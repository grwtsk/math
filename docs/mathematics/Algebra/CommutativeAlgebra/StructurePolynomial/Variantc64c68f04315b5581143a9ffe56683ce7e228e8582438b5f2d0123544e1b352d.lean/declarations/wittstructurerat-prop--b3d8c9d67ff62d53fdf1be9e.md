# wittStructureRat_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca973a86-7b37-8635-018a-a9121835d452",
  "kind": "theorem",
  "lexical_name": "wittStructureRat_prop",
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
  "slug": "wittstructurerat-prop--b3d8c9d67ff62d53fdf1be9e",
  "source": {
    "blob": "1cc0432206657a0d0e63f24b6dfbf4bfcccf25e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 148,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d8c9d67ff62d53fdf1be9e437997fb2831760cc779e48f339de17f81ee4cd4",
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

Occurrence: `result:ca973a86-7b37-8635-018a-a9121835d452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittStructureRat_prop (Φ : MvPolynomial idx ℚ) (n : ℕ) :
    bind₁ (wittStructureRat p Φ) (W_ ℚ n) = bind₁ (fun i => rename (Prod.mk i) (W_ ℚ n)) Φ :=
  calc
    bind₁ (wittStructureRat p Φ) (W_ ℚ n) =
        bind₁ (fun k => bind₁ (fun i => (rename (Prod.mk i)) (W_ ℚ k)) Φ)
          (bind₁ (xInTermsOfW p ℚ) (W_ ℚ n)) :=
      by rw [bind₁_bind₁]; exact eval₂Hom_congr (RingHom.ext_rat _ _) rfl rfl
    _ = bind₁ (fun i => rename (Prod.mk i) (W_ ℚ n)) Φ := by
      rw [bind₁_xInTermsOfW_wittPolynomial p _ n, bind₁_X_right]
#align witt_structure_rat_prop wittStructureRat_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cc0432206657a0d0e63f24b6dfbf4bfcccf25e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
