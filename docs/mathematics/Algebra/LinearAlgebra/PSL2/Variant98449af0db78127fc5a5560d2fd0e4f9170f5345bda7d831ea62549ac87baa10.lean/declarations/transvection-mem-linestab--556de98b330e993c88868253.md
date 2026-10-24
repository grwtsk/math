# transvection_mem_lineStab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a0f719983184f576a1d62d5904b1a823ae9c092",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a37b2a1f-a7a9-c136-8f7a-a5c60bb52c42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90bed0f2-e4b7-74d6-1244-5b38e2f27e31",
  "kind": "lemma",
  "lexical_name": "transvection_mem_lineStab",
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
  "slug": "transvection-mem-linestab--556de98b330e993c88868253",
  "source": {
    "blob": "5a0f719983184f576a1d62d5904b1a823ae9c092",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:556de98b330e993c8886825384a6d4ac1662025f2fb18f221cc71a69da6e6fe2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90bed0f2-e4b7-74d6-1244-5b38e2f27e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transvection_mem_lineStab {i j : ι} (hij : i ≠ j) (b : F) :
    transvection hij b ∈ lineStab (Submodule.span F {(Pi.single i (1 : F) : ι → F)}) :=
  fun w ↦ Submodule.mem_span_singleton.2 ⟨b * w j, by simp [mul_smul,
    Matrix.SpecialLinearGroup.smul_def, transvection_coe, add_smul, Matrix.single_mulVec_eq]⟩

/-- Every transvection in `SL ι F` whose indices are `(i₁, i₂)` or `(i₂, i₁)` is in the join
of `lineStab(span F {e_{i₁}})` and `lineStab(span F {e_{i₂}})`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PSL2/Variant98449af0db78127fc5a5560d2fd0e4f9170f5345bda7d831ea62549ac87baa10.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a0f719983184f576a1d62d5904b1a823ae9c092` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
