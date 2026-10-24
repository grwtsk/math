# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19650f59ff57596c8d17b721d53e4ae1c0b5e3066c7951cf4d08b83f07a7ee69",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b61429c3c1d6cd33ffaba7c7",
  "source": {
    "blob": "c1b022efd62bd4272fcdae489380da7dd764a8f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 381,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b61429c3c1d6cd33ffaba7c7b814761bf4044bb81091da3e43c91d1400db2531",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19650f59ff57596c8d17b721d53e4ae1c0b5e3066c7951cf4d08b83f07a7ee69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Surjective (𝔸(n; S) ↘ S) := MorphismProperty.pullback_fst _ _ <| by
  have := isIso_of_isTerminal specULiftZIsTerminal terminalIsTerminal (terminal.from _)
  rw [← terminal.comp_from (Spec.map (CommRingCat.ofHom C)),
    MorphismProperty.cancel_right_of_respectsIso (P := @Surjective)]
  exact ⟨MvPolynomial.comap_C_surjective⟩

variable (n) in
set_option backward.isDefEq.respectTransparency.types false in
/-- The affine `n`-space over `S` is smooth of relative dimension `Nat.card n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1b022efd62bd4272fcdae489380da7dd764a8f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
