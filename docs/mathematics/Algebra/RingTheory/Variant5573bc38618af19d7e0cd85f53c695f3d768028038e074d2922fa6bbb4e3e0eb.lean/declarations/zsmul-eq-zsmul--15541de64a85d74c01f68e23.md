# zsmul_eq_zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "984c72969891f4231b6ea7f64064d5b47c2d1b08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f60d0d9-33af-423f-7046-95558f3f096f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:287b8884-3410-476c-9f13-9fc195f9f21f",
  "kind": "lemma",
  "lexical_name": "zsmul_eq_zsmul",
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
  "slug": "zsmul-eq-zsmul--15541de64a85d74c01f68e23",
  "source": {
    "blob": "984c72969891f4231b6ea7f64064d5b47c2d1b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 190,
    "path": "GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15541de64a85d74c01f68e23d991489e5aa7cba76c0dcda3d17abaf5dbbfeddf",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:287b8884-3410-476c-9f13-9fc195f9f21f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zsmul_eq_zsmul (n : ℤ) (x : X[S⁻¹]) :
    letI inst := OreLocalization.instModuleOfIsScalarTower (R₀ := ℤ) (R := R) (X := X) (S := S)
    HSMul.hSMul (self := @instHSMul _ _ inst.toSMul) n x = n • x := by
  letI inst := OreLocalization.instModuleOfIsScalarTower (R₀ := ℤ) (R := R) (X := X) (S := S)
  exact congr($(AddCommGroup.uniqueIntModule.2 inst).smul n x)

open nonZeroDivisors

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984c72969891f4231b6ea7f64064d5b47c2d1b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
