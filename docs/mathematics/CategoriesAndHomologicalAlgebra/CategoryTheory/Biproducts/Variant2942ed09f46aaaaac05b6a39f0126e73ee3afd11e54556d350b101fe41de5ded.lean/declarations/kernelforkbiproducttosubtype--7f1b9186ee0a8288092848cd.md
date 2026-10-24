# kernelForkBiproductToSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb173c7d8b5d2ba53cfacc53f30a15e26c78db7bc399931a823c17a48ac9f5cd",
  "kind": "def",
  "lexical_name": "kernelForkBiproductToSubtype",
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
  "slug": "kernelforkbiproducttosubtype--7f1b9186ee0a8288092848cd",
  "source": {
    "blob": "5025feec3aa817b3640b6ff4094467067542d2ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 913,
    "line": 889,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f1b9186ee0a8288092848cdc735fdd55f4a706df724fe4789a20c745f39b2a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb173c7d8b5d2ba53cfacc53f30a15e26c78db7bc399931a823c17a48ac9f5cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 889–913.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kernelForkBiproductToSubtype (p : K → Prop) :
    LimitCone (parallelPair (biproduct.toSubtype f p) 0) where
  cone :=
    KernelFork.ofι (biproduct.fromSubtype f pᶜ)
      (by
        classical
        ext j k
        simp only [Category.assoc, biproduct.ι_fromSubtype_assoc, biproduct.ι_toSubtype_assoc,
          comp_zero, zero_comp]
        rw [dite_eq_right k.2]
        simp only [zero_comp])
  isLimit :=
    KernelFork.IsLimit.ofι _ _ (fun {_} g _ => g ≫ biproduct.toSubtype f pᶜ)
      (by
        classical
        intro W' g' w
        ext j
        simp only [Category.assoc, biproduct.toSubtype_fromSubtype, Pi.compl_apply,
          biproduct.map_π]
        split_ifs with h
        · simp
        · replace w := w =≫ biproduct.π _ ⟨j, not_not.mp h⟩
          simpa using w.symm)
      (by cat_disch)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant2942ed09f46aaaaac05b6a39f0126e73ee3afd11e54556d350b101fe41de5ded.lean#L889).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5025feec3aa817b3640b6ff4094467067542d2ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
