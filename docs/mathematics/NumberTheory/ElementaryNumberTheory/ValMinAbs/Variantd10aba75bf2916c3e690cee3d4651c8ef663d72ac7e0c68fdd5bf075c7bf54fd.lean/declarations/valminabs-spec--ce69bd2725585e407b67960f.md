# valMinAbs_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5995fd4c38495e1c0b70027ceca7431443b48bd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f10560c-08e5-7488-6bc6-14e2107d49dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dde6ad2-5395-7776-4eea-25694f8f46bb",
  "kind": "lemma",
  "lexical_name": "valMinAbs_spec",
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
  "slug": "valminabs-spec--ce69bd2725585e407b67960f",
  "source": {
    "blob": "5995fd4c38495e1c0b70027ceca7431443b48bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce69bd2725585e407b67960fe2b59295401f3e1f8b406cb2f15fbdfeec95605a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dde6ad2-5395-7776-4eea-25694f8f46bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valMinAbs_spec [NeZero n] (x : ZMod n) (y : ℤ) :
    x.valMinAbs = y ↔ x = y ∧ y * 2 ∈ Set.Ioc (-n : ℤ) n where
  mp := by rintro rfl; exact ⟨x.coe_valMinAbs.symm, x.valMinAbs_mem_Ioc⟩
  mpr h := by
    rw [← sub_eq_zero]
    apply @Int.eq_zero_of_abs_lt_dvd n
    · rw [← intCast_zmod_eq_zero_iff_dvd, Int.cast_sub, coe_valMinAbs, h.1, sub_self]
    rw [← mul_lt_mul_right (@zero_lt_two ℤ _ _ _ _ _)]
    nth_rw 1 [← abs_eq_self.2 (@zero_le_two ℤ _ _ _ _)]
    rw [← abs_mul, sub_mul, abs_lt]
    constructor <;> linarith only [x.valMinAbs_mem_Ioc.1, x.valMinAbs_mem_Ioc.2, h.2.1, h.2.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5995fd4c38495e1c0b70027ceca7431443b48bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
