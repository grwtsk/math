# Pi.optionEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fb52faa301ff7b5aead467fc425046d9e91ffa7a8007d70c48e5ff1d0605520",
  "kind": "def",
  "lexical_name": "Pi.optionEquivalence",
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
  "slug": "pi-optionequivalence--ff614f61e561eb9fd3424570",
  "source": {
    "blob": "ed3e4dfb24eb2312c3a2644dae2e16eb997dd7fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 340,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff614f61e561eb9fd34245701e804c9413543b2933adb6e7b540e5442f921103",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fb52faa301ff7b5aead467fc425046d9e91ffa7a8007d70c48e5ff1d0605520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pi.optionEquivalence (C' : Option J → Type u₁) [∀ i, Category.{v₁} (C' i)] :
    (∀ i, C' i) ≌ C' none × (∀ (j : J), C' (some j)) where
  functor := Functor.prod' (Pi.eval C' none)
    (Functor.pi' (fun i => (Pi.eval _ (some i))))
  inverse := Functor.pi' (fun i => match i with
    | none => Prod.fst _ _
    | some i => Prod.snd _ _ ⋙ (Pi.eval _ i))
  unitIso := NatIso.pi' (fun i => match i with
    | none => Iso.refl _
    | some _ => Iso.refl _)
  counitIso := by exact Iso.refl _

namespace Equivalence

variable {C}
variable {D : I → Type u₂} [∀ i, Category.{v₂} (D i)]

/-- Assemble an `I`-indexed family of equivalences of categories
into a single equivalence. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3e4dfb24eb2312c3a2644dae2e16eb997dd7fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
