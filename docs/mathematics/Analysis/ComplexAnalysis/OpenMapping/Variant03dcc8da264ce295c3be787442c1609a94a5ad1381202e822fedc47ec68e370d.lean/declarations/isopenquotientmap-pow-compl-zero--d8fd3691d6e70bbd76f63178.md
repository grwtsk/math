# isOpenQuotientMap_pow_compl_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f5310c2253a6d42088fada62904e438bb12e44b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcce5ad3-1af5-c58f-31f6-9e5ed7c8e7e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6930c14-ae68-edb0-8fe8-f2edf5b32667",
  "kind": "theorem",
  "lexical_name": "isOpenQuotientMap_pow_compl_zero",
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
  "slug": "isopenquotientmap-pow-compl-zero--d8fd3691d6e70bbd76f63178",
  "source": {
    "blob": "2f5310c2253a6d42088fada62904e438bb12e44b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 258,
    "path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8fd3691d6e70bbd76f63178dcc7c08c8efc61aa9d969bc31ece303043168f3d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/OpenMapping/Variant03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6930c14-ae68-edb0-8fe8-f2edf5b32667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpenQuotientMap_pow_compl_zero (n : ℕ) [NeZero n] :
    IsOpenQuotientMap
      fun z : {z : ℂ // z ≠ 0} ↦ (⟨z ^ n, pow_ne_zero n z.2⟩ : {z : ℂ // z ≠ 0}) where
  surjective z := have ⟨w, h⟩ := (isOpenQuotientMap_pow n).surjective z
    ⟨⟨w, by rintro rfl; exact z.2 (by simpa [zero_pow (NeZero.ne n)] using h.symm)⟩, Subtype.ext h⟩
  continuous := by fun_prop
  isOpenMap := (IsOpen.isOpenEmbedding_subtypeVal isClosed_singleton.1).isOpenMap_iff.mpr <|
    (isOpenQuotientMap_pow n).isOpenMap.comp isClosed_singleton.1.isOpenMap_subtype_val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/OpenMapping/Variant03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant03dcc8da264ce295c3be787442c1609a94a5ad1381202e822fedc47ec68e370d.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f5310c2253a6d42088fada62904e438bb12e44b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
