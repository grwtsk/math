# dividedPowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95be24980e470526599e22b1977448b5ae5e08a915863c9fe5925ee664d8492c",
  "kind": "def",
  "lexical_name": "dividedPowers",
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
  "slug": "dividedpowers--ef4b288e4e46e05b3d8d2a45",
  "source": {
    "blob": "cc50ed4e259707b881d6274e158ea756dffe484b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 139,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef4b288e4e46e05b3d8d2a45d48704c8fff226c5a30eb8e67d35ee2134c9c581",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95be24980e470526599e22b1977448b5ae5e08a915863c9fe5925ee664d8492c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dividedPowers : DividedPowers (Ideal.span {(p : ℤ_[p])}) := by
  classical
  refine ofInjective (Ideal.span {(p : ℤ_[p])}) (⊤)
    PadicInt.Coe.ringHom ((Set.injective_codRestrict Subtype.property).mp fun ⦃a₁ a₂⦄ a ↦ a)
    (RatAlgebra.dividedPowers (⊤ : Ideal ℚ_[p])) ?_ ?_
  · rw [Ideal.map_span, Set.image_singleton, map_natCast]
    simp only [Ideal.span_singleton_eq_top, isUnit_iff_ne_zero, ne_eq, cast_eq_zero]
    exact Nat.Prime.ne_zero hp.elim
  · intro n x hx
    exact ⟨⟨dpow' p n x, dpow'_int p n hx⟩, fun hn ↦ dpow'_mem p hn hx, by
      simp [dpow', inverse_eq_inv', Coe.ringHom_apply, RatAlgebra.dpow_apply,
        Submodule.mem_top, ↓reduceIte]⟩

open Function

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc50ed4e259707b881d6274e158ea756dffe484b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
