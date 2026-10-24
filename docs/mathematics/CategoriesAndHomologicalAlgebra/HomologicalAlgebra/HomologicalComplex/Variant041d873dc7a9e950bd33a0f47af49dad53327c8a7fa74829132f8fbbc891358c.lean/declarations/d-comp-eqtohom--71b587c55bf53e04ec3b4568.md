# d_comp_eqToHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd5377e8ee6c9f6ca3491e7c6eb5641090a44c68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/041d873dc7a9e950bd33a0f47af49dad53327c8a7fa74829132f8fbbc891358c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1f7400b-9057-d945-2ef9-7239c5d35573",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:148d8162-3f91-dd05-5a4b-caede3e9ff36",
  "kind": "theorem",
  "lexical_name": "d_comp_eqToHom",
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
  "slug": "d-comp-eqtohom--71b587c55bf53e04ec3b4568",
  "source": {
    "blob": "dd5377e8ee6c9f6ca3491e7c6eb5641090a44c68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 366,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant041d873dc7a9e950bd33a0f47af49dad53327c8a7fa74829132f8fbbc891358c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b587c55bf53e04ec3b4568f23fe13d265f35a053484af727a401ac108c4fcb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant041d873dc7a9e950bd33a0f47af49dad53327c8a7fa74829132f8fbbc891358c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:148d8162-3f91-dd05-5a4b-caede3e9ff36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d_comp_eqToHom {i j j' : ι} (rij : c.Rel i j) (rij' : c.Rel i j') :
    C.d i j' ≫ eqToHom (congr_arg C.X (c.next_eq rij' rij)) = C.d i j := by
  obtain rfl := c.next_eq rij rij'
  simp only [eqToHom_refl, comp_id]

-- Porting note: removed @[simp] as the linter complained
/-- If `C.d i j` and `C.d i' j` are both allowed, then we must have `i = i'`,
and so the differentials only differ by an `eqToHom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant041d873dc7a9e950bd33a0f47af49dad53327c8a7fa74829132f8fbbc891358c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant041d873dc7a9e950bd33a0f47af49dad53327c8a7fa74829132f8fbbc891358c.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5377e8ee6c9f6ca3491e7c6eb5641090a44c68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
