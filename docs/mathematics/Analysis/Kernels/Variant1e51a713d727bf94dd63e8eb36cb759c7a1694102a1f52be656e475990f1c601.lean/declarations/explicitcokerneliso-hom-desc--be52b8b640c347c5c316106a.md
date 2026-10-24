# explicitCokernelIso_hom_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6298046e4f2620c99fad0c242b020241906d42b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5777fe2c-9551-b419-4175-d0047a5c7f82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28d2ca03-1ad7-baa6-275e-325d1f3de48b",
  "kind": "theorem",
  "lexical_name": "explicitCokernelIso_hom_desc",
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
  "slug": "explicitcokerneliso-hom-desc--be52b8b640c347c5c316106a",
  "source": {
    "blob": "6298046e4f2620c99fad0c242b020241906d42b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 382,
    "path": "GRWTSK/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be52b8b640c347c5c316106a37e0bf05bacb1d4d2b4ca97e58e5abee889bb725",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28d2ca03-1ad7-baa6-275e-325d1f3de48b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicitCokernelIso_hom_desc {X Y Z : SemiNormedGroupCat.{u}} {f : X ⟶ Y} {g : Y ⟶ Z}
    (w : f ≫ g = 0) :
    (explicitCokernelIso f).hom ≫ cokernel.desc f g w = explicitCokernelDesc w := by
  ext1
  simp [explicitCokernelDesc, explicitCokernelπ, explicitCokernelIso,
    IsColimit.coconePointUniqueUpToIso]
set_option linter.uppercaseLean3 false in
#align SemiNormedGroup.explicit_cokernel_iso_hom_desc SemiNormedGroupCat.explicitCokernelIso_hom_desc

/-- A special case of `CategoryTheory.Limits.cokernel.map` adapted to `explicitCokernel`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant1e51a713d727bf94dd63e8eb36cb759c7a1694102a1f52be656e475990f1c601.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6298046e4f2620c99fad0c242b020241906d42b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
