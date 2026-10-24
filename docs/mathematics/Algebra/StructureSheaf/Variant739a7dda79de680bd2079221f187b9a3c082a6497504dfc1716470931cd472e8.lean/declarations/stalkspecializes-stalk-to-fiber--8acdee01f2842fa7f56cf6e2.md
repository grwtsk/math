# stalkSpecializes_stalk_to_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da3af834-5863-805c-e8b6-a5247e365621",
  "kind": "theorem",
  "lexical_name": "stalkSpecializes_stalk_to_fiber",
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
  "slug": "stalkspecializes-stalk-to-fiber--8acdee01f2842fa7f56cf6e2",
  "source": {
    "blob": "b2b8f88a0a3366a26e204ada4a5f97b22cc22de5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 965,
    "line": 942,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8acdee01f2842fa7f56cf6e2df5489cc4657a9b0ca7da6b6dcf1af1835085977",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da3af834-5863-805c-e8b6-a5247e365621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 942–965.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stalkSpecializes_stalk_to_fiber {R : Type*} [CommRing R] {x y : PrimeSpectrum R}
    (h : x ⤳ y) :
    (structureSheaf R).presheaf.stalkSpecializes h ≫ StructureSheaf.stalkToFiberRingHom R x =
      StructureSheaf.stalkToFiberRingHom R y ≫
      (CommRingCat.ofHom (PrimeSpectrum.localizationMapOfSpecializes h)) := by
  change _ ≫ (StructureSheaf.stalkIso R x).hom = (StructureSheaf.stalkIso R y).hom ≫ _
  rw [← Iso.eq_comp_inv, Category.assoc, ← Iso.inv_comp_eq]
  exact localizationToStalk_stalkSpecializes h

section Comap

variable {R} {S : Type u} [CommRing S] {P : Type u} [CommRing P]

/--
Given a ring homomorphism `f : R →+* S`, an open set `U` of the prime spectrum of `R` and an open
set `V` of the prime spectrum of `S`, such that `V ⊆ (comap f) ⁻¹' U`, we can push a section `s`
on `U` to a section on `V`, by composing with `Localization.localRingHom _ _ f` from the left and
`comap f` from the right. Explicitly, if `s` evaluates on `comap f p` to `a / b`, its image on `V`
evaluates on `p` to `f(a) / f(b)`.

At the moment, we work with arbitrary dependent functions `s : Π x : U, Localizations R x`. Below,
we prove the predicate `isLocallyFraction` is preserved by this map, hence it can be extended to
a morphism between the structure sheaves of `R` and `S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant739a7dda79de680bd2079221f187b9a3c082a6497504dfc1716470931cd472e8.lean#L942).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2b8f88a0a3366a26e204ada4a5f97b22cc22de5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
