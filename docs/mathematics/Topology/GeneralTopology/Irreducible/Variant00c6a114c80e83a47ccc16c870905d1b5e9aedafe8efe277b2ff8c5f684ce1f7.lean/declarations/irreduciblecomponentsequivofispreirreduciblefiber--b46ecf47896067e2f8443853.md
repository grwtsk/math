# irreducibleComponentsEquivOfIsPreirreducibleFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99fcc4b131b07a98c43bece8a2ccd553c5aedf3a6c7e5be00b304202bd2ef080",
  "kind": "def",
  "lexical_name": "irreducibleComponentsEquivOfIsPreirreducibleFiber",
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
  "slug": "irreduciblecomponentsequivofispreirreduciblefiber--b46ecf47896067e2f8443853",
  "source": {
    "blob": "5d240464803fa57793a1ed4004749ce28e34ecf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 513,
    "path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b46ecf47896067e2f8443853f7c8c85edb587e692040cd3029634a14c82de755",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99fcc4b131b07a98c43bece8a2ccd553c5aedf3a6c7e5be00b304202bd2ef080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def irreducibleComponentsEquivOfIsPreirreducibleFiber :
    irreducibleComponents Y ≃o irreducibleComponents X where
  invFun W := ⟨f '' W.1,
    image_mem_irreducibleComponents_of_isPreirreducible_fiber f hf₁ hf₂ hf₃ hf₄ W.2⟩
  toFun W := ⟨f ⁻¹' W.1,
    preimage_mem_irreducibleComponents_of_isPreirreducible_fiber W.2 hf₁ hf₂ hf₃
      (by simp [hf₄.range_eq, W.2.1.1])⟩
  right_inv W := Subtype.ext <| by
    refine (Set.subset_preimage_image _ _).antisymm' (W.2.2 ?_ (Set.subset_preimage_image _ _))
    refine ⟨?_, (W.2.1.image _ hf₁.continuousOn).2.preimage_of_isPreirreducible_fiber _ hf₂ hf₃⟩
    obtain ⟨x, hx⟩ := W.2.1.1
    exact ⟨_, x, hx, rfl⟩
  left_inv _ := Subtype.ext <| Set.image_preimage_eq _ hf₄
  map_rel_iff' {W Z} := by
    refine ⟨fun H ↦ ?_, Set.preimage_mono⟩
    simpa only [Equiv.coe_fn_mk, Set.image_preimage_eq _ hf₄] using! Set.image_mono (f := f) H

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irreducible/Variant00c6a114c80e83a47ccc16c870905d1b5e9aedafe8efe277b2ff8c5f684ce1f7.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d240464803fa57793a1ed4004749ce28e34ecf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
