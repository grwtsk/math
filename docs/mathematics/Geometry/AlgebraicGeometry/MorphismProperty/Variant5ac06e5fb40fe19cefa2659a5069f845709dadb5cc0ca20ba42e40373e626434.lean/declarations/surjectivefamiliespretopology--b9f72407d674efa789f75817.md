# surjectiveFamiliesPretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f62e175f19a68e4c40b60bf974fa1b3f789c37afd26029aba4ea72ef59504d43",
  "kind": "def",
  "lexical_name": "surjectiveFamiliesPretopology",
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
  "slug": "surjectivefamiliespretopology--b9f72407d674efa789f75817",
  "source": {
    "blob": "03b8f4445ddc4cb96f5321e2e3b08f90f4a4563a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 70,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9f72407d674efa789f7581732fe5a3ea3cfc3c8a3daceb49b1f2e85dfdbb7b3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f62e175f19a68e4c40b60bf974fa1b3f789c37afd26029aba4ea72ef59504d43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def surjectiveFamiliesPretopology [IsJointlySurjectivePreserving ⊤] : Pretopology Scheme.{u} where
  coverings X S :=
    ∀ x : X, ∃ (Y : Scheme.{u}) (y : Y) (f : Y ⟶ X) (hf : S f), f.base y = x
  has_isos X Y f hf x := by
    use Y, (inv f).base x, f
    simp [← Scheme.comp_base_apply]
  pullbacks X Y f S hS x := by
    obtain ⟨Z, z, g, hg, hz⟩ := hS (f.base x)
    obtain ⟨w, hw⟩ :=
      IsJointlySurjectivePreserving.exists_preimage_snd_triplet_of_prop (P := ⊤) trivial z x hz
    use pullback g f, w, pullback.snd g f
    simpa [hw] using Presieve.pullbackArrows.mk Z g hg
  transitive X S T hS hT x := by
    obtain ⟨Y, y, f, hf, hy⟩ := hS x
    obtain ⟨Z, z, g, hg, hz⟩ := hT f hf y
    use Z, z, g ≫ f
    simpa [hz, hy] using Presieve.bind_comp f hf hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5ac06e5fb40fe19cefa2659a5069f845709dadb5cc0ca20ba42e40373e626434.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b8f4445ddc4cb96f5321e2e3b08f90f4a4563a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
