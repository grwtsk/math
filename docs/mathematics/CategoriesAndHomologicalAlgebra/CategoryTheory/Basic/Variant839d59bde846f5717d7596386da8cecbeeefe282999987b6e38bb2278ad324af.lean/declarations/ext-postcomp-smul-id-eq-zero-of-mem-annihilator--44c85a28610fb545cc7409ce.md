# Ext.postcomp_smul_id_eq_zero_of_mem_annihilator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be063c580567dc1a28ab1f241c7bb9af2c160ae0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66da1bfe-95a0-bcab-891b-75ffecfed495",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:596aa632-284f-4613-f72e-89f8f1c77317",
  "kind": "lemma",
  "lexical_name": "Ext.postcomp_smul_id_eq_zero_of_mem_annihilator",
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
  "slug": "ext-postcomp-smul-id-eq-zero-of-mem-annihilator--44c85a28610fb545cc7409ce",
  "source": {
    "blob": "be063c580567dc1a28ab1f241c7bb9af2c160ae0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44c85a28610fb545cc7409cefb73e9db02c675d7b7f25d6598aedf32bcc80b4a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:596aa632-284f-4613-f72e-89f8f1c77317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ext.postcomp_smul_id_eq_zero_of_mem_annihilator {r : R} (mem_ann : r ∈ Module.annihilator R N)
    (n : ℕ) : AddCommGrpCat.ofHom ((Ext.mk₀ (r • 𝟙 M)).postcomp N (add_zero n)) = 0 := by
  ext h
  have : r • 𝟙 N = 0 := by
    simp [← ModuleCat.lsmul_eq_smul_id, Module.mem_annihilator_iff_lsmul_eq_zero.mp mem_ann]
  have smul_eq : r • h = (Ext.mk₀ (r • 𝟙 N)).comp h (zero_add n) := by simp [Ext.mk₀_smul]
  simp [Ext.mk₀_smul, this, smul_eq]

/-- `r • 𝟙 M` induces a monomorphism in `Ext M N n` if and only if scalar multiplication by `r`
is faithful on `Ext M N n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant839d59bde846f5717d7596386da8cecbeeefe282999987b6e38bb2278ad324af.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be063c580567dc1a28ab1f241c7bb9af2c160ae0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
