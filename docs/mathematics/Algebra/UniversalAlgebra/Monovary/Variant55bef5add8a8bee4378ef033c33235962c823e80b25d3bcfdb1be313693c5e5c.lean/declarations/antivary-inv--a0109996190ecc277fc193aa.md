# antivary_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b66d7629-5b0d-9153-11ef-9bf9b5a6a94f",
  "kind": "lemma",
  "lexical_name": "antivary_inv",
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
  "slug": "antivary-inv--a0109996190ecc277fc193aa",
  "source": {
    "blob": "80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 121,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0109996190ecc277fc193aa4ba37d845a53b33792f592a39ed1385f6feb9fc9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b66d7629-5b0d-9153-11ef-9bf9b5a6a94f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma antivary_inv : Antivary f⁻¹ g⁻¹ ↔ Antivary f g := by simp

end

@[to_additive] alias ⟨MonovaryOn.of_inv_left, AntivaryOn.inv_left⟩ := monovaryOn_inv_left
@[to_additive] alias ⟨AntivaryOn.of_inv_left, MonovaryOn.inv_left⟩ := antivaryOn_inv_left
@[to_additive] alias ⟨MonovaryOn.of_inv_right, AntivaryOn.inv_right⟩ := monovaryOn_inv_right
@[to_additive] alias ⟨AntivaryOn.of_inv_right, MonovaryOn.inv_right⟩ := antivaryOn_inv_right
@[to_additive] alias ⟨MonovaryOn.of_inv, MonovaryOn.inv⟩ := monovaryOn_inv
@[to_additive] alias ⟨AntivaryOn.of_inv, AntivaryOn.inv⟩ := antivaryOn_inv
@[to_additive] alias ⟨Monovary.of_inv_left, Antivary.inv_left⟩ := monovary_inv_left
@[to_additive] alias ⟨Antivary.of_inv_left, Monovary.inv_left⟩ := antivary_inv_left
@[to_additive] alias ⟨Monovary.of_inv_right, Antivary.inv_right⟩ := monovary_inv_right
@[to_additive] alias ⟨Antivary.of_inv_right, Monovary.inv_right⟩ := antivary_inv_right
@[to_additive] alias ⟨Monovary.of_inv, Monovary.inv⟩ := monovary_inv
@[to_additive] alias ⟨Antivary.of_inv, Antivary.inv⟩ := antivary_inv

end OrderedCommGroup

section LinearOrderedCommGroup
variable [Preorder α] [CommGroup β] [LinearOrder β] [IsOrderedMonoid β] {s : Set ι} {f : ι → α}
  {g g₁ g₂ : ι → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monovary/Variant55bef5add8a8bee4378ef033c33235962c823e80b25d3bcfdb1be313693c5e5c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80b8f51dc84189d9d9cfdbe78c2b3921b6c553d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
