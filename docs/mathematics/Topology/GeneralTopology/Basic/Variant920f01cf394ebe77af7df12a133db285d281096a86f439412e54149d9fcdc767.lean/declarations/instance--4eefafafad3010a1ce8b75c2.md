# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e49e36d85fc3d450ba20f7d986057d98e9de891ab60f4f3780c54382bd063ca",
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
  "slug": "instance--4eefafafad3010a1ce8b75c2",
  "source": {
    "blob": "4a875d788f8cf2b17607d2c6a902d519c4377f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4eefafafad3010a1ce8b75c218e75baf633542ce5281070dbd55d6c67e20cc2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e49e36d85fc3d450ba20f7d986057d98e9de891ab60f4f3780c54382bd063ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (S : LightDiagram.{u}) : SecondCountableTopology S.cone.pt := by
  rw [← TopologicalSpace.Clopens.countable_iff_secondCountable]
  refine @Countable.of_equiv _ _ ?_ (LocallyConstant.equivClopens (X := S.cone.pt))
  refine @Function.Surjective.countable
    (Σ (n : ℕ), LocallyConstant ((S.diagram ⋙ FintypeCat.toProfinite).obj ⟨n⟩) (Fin 2)) _ ?_ ?_ ?_
  · apply @instCountableSigma _ _ _ ?_
    intro n
    refine @Finite.to_countable _ ?_
    refine @Finite.of_injective _ ((S.diagram ⋙ FintypeCat.toProfinite).obj ⟨n⟩ → (Fin 2)) ?_ _
      LocallyConstant.coe_injective
    refine @Pi.finite _ _ ?_ _
    simp only [Functor.comp_obj]
    exact show (Finite (S.diagram.obj _)) from inferInstance
  · exact fun a ↦ a.snd.comap (S.cone.π.app ⟨a.fst⟩).hom
  · intro a
    obtain ⟨n, g, h⟩ := Profinite.exists_locallyConstant S.cone S.isLimit a
    exact ⟨⟨unop n, g⟩, h.symm⟩

/-- The inverse part of the equivalence `LightProfinite ≌ LightDiagram` -/
@[simps obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a875d788f8cf2b17607d2c6a902d519c4377f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
