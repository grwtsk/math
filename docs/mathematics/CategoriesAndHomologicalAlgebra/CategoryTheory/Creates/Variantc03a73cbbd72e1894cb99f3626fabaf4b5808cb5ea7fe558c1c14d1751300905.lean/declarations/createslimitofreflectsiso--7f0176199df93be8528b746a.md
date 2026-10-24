# createsLimitOfReflectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2f234ddae0d888f635a57713ac0b1c1791b2b7d57f7f2ab59eb2f403f80e553",
  "kind": "def",
  "lexical_name": "createsLimitOfReflectsIso",
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
  "slug": "createslimitofreflectsiso--7f0176199df93be8528b746a",
  "source": {
    "blob": "e503cb042d9f123a4d9b3c25a498ded56950c18b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 266,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f0176199df93be8528b746a3407453dd9cc3679a54cdf462a9e4508e999209e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2f234ddae0d888f635a57713ac0b1c1791b2b7d57f7f2ab59eb2f403f80e553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsLimitOfReflectsIso {K : J ⥤ C} {F : C ⥤ D} [F.ReflectsIsomorphisms]
    (h : ∀ c t, LiftsToLimit K F c t) : CreatesLimit K F where
  lifts c t := (h c t).toLiftableCone
  toReflectsLimit :=
    { reflects := fun {d} hd => ⟨by
        let d' : Cone K := (h (F.mapCone d) hd).toLiftableCone.liftedCone
        let i : F.mapCone d' ≅ F.mapCone d :=
          (h (F.mapCone d) hd).toLiftableCone.validLift
        let hd' : IsLimit d' := (h (F.mapCone d) hd).makesLimit
        let f : d ⟶ d' := hd'.liftConeMorphism d
        have : (Cone.functoriality K F).map f = i.inv :=
          (hd.ofIsoLimit i.symm).uniq_cone_morphism
        haveI : IsIso ((Cone.functoriality K F).map f) := by
          rw [this]
          infer_instance
        haveI : IsIso f := isIso_of_reflects_iso f (Cone.functoriality K F)
        exact IsLimit.ofIsoLimit hd' (asIso f).symm⟩ }

/-- If `F` reflects isomorphisms and we can lift a single limit cone to a limit cone, then `F`
creates limits. Note that unlike `createsLimitOfReflectsIso`, to apply this result it is
necessary to know that `K ⋙ F` actually has a limit. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variantc03a73cbbd72e1894cb99f3626fabaf4b5808cb5ea7fe558c1c14d1751300905.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e503cb042d9f123a4d9b3c25a498ded56950c18b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
