# CochainComplex.homologyZeroIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93f603db6b8172e1142b0fc7510298293138a3bee6dbbb2e7fdef1ce2f30c045",
  "kind": "def",
  "lexical_name": "CochainComplex.homologyZeroIso",
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
  "slug": "cochaincomplex-homologyzeroiso--2edabd42a1d5184310a0920c",
  "source": {
    "blob": "49b89d1159d2b34f0f051d28abfb6a9e0024c5a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2edabd42a1d5184310a0920c0f542790e01330b382ca28affaad86c32d1a676a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93f603db6b8172e1142b0fc7510298293138a3bee6dbbb2e7fdef1ce2f30c045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CochainComplex.homologyZeroIso [HasZeroObject V] [HasKernels V] [HasImages V] [HasCokernels V]
    (C : CochainComplex V ℕ) : C.homology 0 ≅ kernel (C.d 0 1) :=
  (homology.mapIso _ _
      (Arrow.isoMk (C.xPrevIsoSelf (by rw [CochainComplex.prev_nat_zero]; exact one_ne_zero))
          (Iso.refl _) (by simp) : Arrow.mk (C.dTo 0) ≅ Arrow.mk 0)
      (Arrow.isoMk (Iso.refl _) (C.xNextIso rfl) (by simp) :
        Arrow.mk (C.dFrom 0) ≅ Arrow.mk (C.d 0 1)) <|
      by simp).trans <|
    homologyOfZeroLeft _
#align cochain_complex.homology_zero_iso CochainComplex.homologyZeroIso

/-- The `n + 1`th homology of a chain complex (as kernel of 'the differential from `Cₙ₊₁`' modulo
the image of 'the differential to `Cₙ₊₁`') is isomorphic to the kernel of `d : Cₙ₊₁ → Cₙ` modulo
the image of `d : Cₙ₊₂ → Cₙ₊₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homology/Variant0dad19cf00a99ce6d6a0607e74ce1d4d13e4bbb003c0605297a4c31b5fbc7c46.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49b89d1159d2b34f0f051d28abfb6a9e0024c5a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
