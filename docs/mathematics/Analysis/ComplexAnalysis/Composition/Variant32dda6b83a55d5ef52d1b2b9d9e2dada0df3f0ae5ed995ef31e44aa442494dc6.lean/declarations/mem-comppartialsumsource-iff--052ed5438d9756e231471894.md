# mem_compPartialSumSource_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 533,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d76416a-24c1-fe86-86ee-de2bb8777282",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb2d9cbf-5597-1987-267e-49f183f1ee1a",
  "kind": "theorem",
  "lexical_name": "mem_compPartialSumSource_iff",
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
  "slug": "mem-comppartialsumsource-iff--052ed5438d9756e231471894",
  "source": {
    "blob": "9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 533,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:052ed5438d9756e23147189401eab418d4c3bcb07f9f200b4d34a15b82aa219b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb2d9cbf-5597-1987-267e-49f183f1ee1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_compPartialSumSource_iff (m M N : ℕ) (i : Σ n, Fin n → ℕ) :
    i ∈ compPartialSumSource m M N ↔
      (m ≤ i.1 ∧ i.1 < M) ∧ ∀ a : Fin i.1, 1 ≤ i.2 a ∧ i.2 a < N := by
  simp only [compPartialSumSource, Finset.mem_Ico, Fintype.mem_piFinset, Finset.mem_sigma]

/-- Change of variables appearing to compute the composition of partial sums of formal
power series -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
