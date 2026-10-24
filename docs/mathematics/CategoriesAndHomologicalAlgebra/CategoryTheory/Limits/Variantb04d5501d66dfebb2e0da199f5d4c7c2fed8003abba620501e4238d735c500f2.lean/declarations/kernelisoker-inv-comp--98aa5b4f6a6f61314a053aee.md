# kernelIsoKer_inv_comp_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cba23b08ba730e01cc709e4acafae59c0667264",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 458,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a32232d2-de9b-15a2-0b0e-4e5338867ba8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e9eee91-20a5-f504-0b3e-968a3c8e575a",
  "kind": "theorem",
  "lexical_name": "kernelIsoKer_inv_comp_ι",
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
  "slug": "kernelisoker-inv-comp--98aa5b4f6a6f61314a053aee",
  "source": {
    "blob": "6cba23b08ba730e01cc709e4acafae59c0667264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 458,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98aa5b4f6a6f61314a053aeeb9db101935af71f2b358f047f2a443d53c5ed536",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e9eee91-20a5-f504-0b3e-968a3c8e575a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelIsoKer_inv_comp_ι {G H : AddCommGroupCat.{u}} (f : G ⟶ H) :
    (kernelIsoKer f).inv ≫ kernel.ι f = AddSubgroup.subtype f.ker := by
  ext
  simp [kernelIsoKer]
set_option linter.uppercaseLean3 false in
#align AddCommGroup.kernel_iso_ker_inv_comp_ι AddCommGroupCat.kernelIsoKer_inv_comp_ι

-- Porting note : explicitly add what to be synthesized under `simps!`, because other lemmas
-- automatically generated is not in normal form
/-- The categorical kernel inclusion for `f : G ⟶ H`, as an object over `G`,
agrees with the `subtype` map.
-/
@[simps! hom_left_apply_coe inv_left_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cba23b08ba730e01cc709e4acafae59c0667264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
