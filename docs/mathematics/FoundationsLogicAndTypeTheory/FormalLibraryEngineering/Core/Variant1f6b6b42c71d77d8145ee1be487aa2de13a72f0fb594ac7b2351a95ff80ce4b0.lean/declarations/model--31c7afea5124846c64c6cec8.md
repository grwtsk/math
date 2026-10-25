# Model

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c9042a2c264e36a3529f4215ea73d393dc10a51b9ebdc098bc2f96d22fdf38e",
  "kind": "structure",
  "lexical_name": "Model",
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
  "slug": "model--31c7afea5124846c64c6cec8",
  "source": {
    "blob": "a9aa77e62cbe62c922e0741a84c1063faeb66c65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1f6b6b42c71d77d8145ee1be487aa2de13a72f0fb594ac7b2351a95ff80ce4b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31c7afea5124846c64c6cec8bbb00528219aa9152b66e3937eb4e1bace5eee58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1f6b6b42c71d77d8145ee1be487aa2de13a72f0fb594ac7b2351a95ff80ce4b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c9042a2c264e36a3529f4215ea73d393dc10a51b9ebdc098bc2f96d22fdf38e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Model where
  Object : Type uObj
  Hom : Object → Object → Type uHom
  id : {C : Object} → Hom C C
  /-- Composition, written as `g` after `f`. -/
  comp : {C D E : Object} → Hom C D → Hom D E → Hom C E
  id_comp :
    ∀ {C D : Object} (f : Hom C D),
      comp id f = f
  comp_id :
    ∀ {C D : Object} (f : Hom C D),
      comp f id = f
  comp_assoc :
    ∀ {B C D E : Object}
      (f : Hom B C) (g : Hom C D) (h : Hom D E),
      comp (comp f g) h = comp f (comp g h)

  /-- The model's supported chain-level isomorphisms. -/
  Iso : Object → Object → Type uIso
  isoRefl : (C : Object) → Iso C C
  /-- Composition of supported isomorphisms, again in execution order. -/
  isoTrans : {C D E : Object} → Iso C D → Iso D E → Iso C E
  isoTrans_refl_left :
    ∀ {C D : Object} (e : Iso C D),
      isoTrans (isoRefl C) e = e
  isoTrans_refl_right :
    ∀ {C D : Object} (e : Iso C D),
      isoTrans e (isoRefl D) = e
  isoTrans_assoc :
    ∀ {B C D E : Object}
      (e : Iso B C) (f : Iso C D) (g : Iso D E),
      isoTrans (isoTrans e f) g = isoTrans e (isoTrans f g)

  /-- A model-specific chain-level quasi-isomorphism predicate. -/
  isQuasiIso : {C D : Object} → Hom C D → Prop
  isQuasiIso_id : ∀ (C : Object), isQuasiIso (id (C := C))
  isQuasiIso_comp :
    ∀ {C D E : Object} {f : Hom C D} {g : Hom D E},
      isQuasiIso f → isQuasiIso g → isQuasiIso (comp f g)

namespace Model

variable (M : Model)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1f6b6b42c71d77d8145ee1be487aa2de13a72f0fb594ac7b2351a95ff80ce4b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1f6b6b42c71d77d8145ee1be487aa2de13a72f0fb594ac7b2351a95ff80ce4b0.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9aa77e62cbe62c922e0741a84c1063faeb66c65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
