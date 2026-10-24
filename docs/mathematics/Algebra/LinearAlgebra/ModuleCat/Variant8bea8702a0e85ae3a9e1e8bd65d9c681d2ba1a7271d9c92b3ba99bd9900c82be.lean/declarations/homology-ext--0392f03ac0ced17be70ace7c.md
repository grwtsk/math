# homology_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff4c6c50f53b542bc1ffe0c4c82615ba208a743c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d9e3373-c87f-69a4-964f-7233ccf65130",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f26de315-e0ce-ad60-319d-1151f36932e1",
  "kind": "theorem",
  "lexical_name": "homology_ext",
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
  "slug": "homology-ext--0392f03ac0ced17be70ace7c",
  "source": {
    "blob": "ff4c6c50f53b542bc1ffe0c4c82615ba208a743c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0392f03ac0ced17be70ace7c5e804482dc17a16a53b9035729711eea974d4b1b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f26de315-e0ce-ad60-319d-1151f36932e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homology_ext {L M N K : ModuleCat R} {f : L ⟶ M} {g : M ⟶ N} (w : f ≫ g = 0)
    {h k : homology f g w ⟶ K}
    (w :
      ∀ x : LinearMap.ker g,
        h (cokernel.π (imageToKernel _ _ w) (toKernelSubobject x)) =
          k (cokernel.π (imageToKernel _ _ w) (toKernelSubobject x))) :
    h = k := by
  refine' cokernel_funext fun n => _
  -- porting note: as `equiv_rw` was not ported, it was replaced by `Equiv.surjective`
  -- Gosh it would be nice if `equiv_rw` could directly use an isomorphism, or an enriched `≃`.
  obtain ⟨n, rfl⟩ := (kernelSubobjectIso g ≪≫
    ModuleCat.kernelIsoKer g).toLinearEquiv.toEquiv.symm.surjective n
  exact w n
set_option linter.uppercaseLean3 false in
#align Module.homology_ext ModuleCat.homology_ext

/-- Bundle an element `C.X i` such that `C.dFrom i x = 0` as a term of `C.cycles i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff4c6c50f53b542bc1ffe0c4c82615ba208a743c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
