# ιSummand_comp_d_comp_πSummand_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09547c87adbffce2a3f8c9103149b27f8b2e3fa5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff2afa8f-e728-0a81-bb51-0e241c810283",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9c3e05e-52f9-8b13-7781-99280625e543",
  "kind": "theorem",
  "lexical_name": "ιSummand_comp_d_comp_πSummand_eq_zero",
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
  "slug": "summand-comp-d-comp-summand-eq-zero--1129239a6755457e5a13d7a2",
  "source": {
    "blob": "09547c87adbffce2a3f8c9103149b27f8b2e3fa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1129239a6755457e5a13d7a274cb2eac3d84253a05e43f89c9c3bc30b5f574a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9c3e05e-52f9-8b13-7781-99280625e543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ιSummand_comp_d_comp_πSummand_eq_zero (j k : ℕ) (A : IndexSet (op ⦋j⦌)) (hA : ¬A.EqId) :
    (s.cofan _).inj A ≫ K[X].d j k ≫ s.πSummand (IndexSet.id (op ⦋k⦌)) = 0 := by
  rw [A.eqId_iff_mono] at hA
  rw [← assoc, ← s.comp_PInfty_eq_zero_iff, assoc, ← PInfty.comm j k, s.cofan_inj_eq, assoc,
    degeneracy_comp_PInfty_assoc X j A.e hA, zero_comp, comp_zero]

/-- If `s` is a splitting of a simplicial object `X` in a preadditive category,
`s.nondegComplex` is a chain complex which is given in degree `n` by
the nondegenerate `n`-simplices of `X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantf62f95d3dc859c8f261fb1751a18895c2d4ad1c2ffb9ce51507ac181204a53df.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09547c87adbffce2a3f8c9103149b27f8b2e3fa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
