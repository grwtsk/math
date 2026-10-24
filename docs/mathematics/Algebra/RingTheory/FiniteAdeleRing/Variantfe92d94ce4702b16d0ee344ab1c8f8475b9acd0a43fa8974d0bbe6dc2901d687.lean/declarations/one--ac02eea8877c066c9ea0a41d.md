# one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "002764af8ecda69cfed0b94ec4f014a0353a2a28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a2c6aad-e25f-c1da-7457-ad1795362c7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e41f48e-481c-4f6c-c111-aafdab67b5a7",
  "kind": "theorem",
  "lexical_name": "one",
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
  "slug": "one--ac02eea8877c066c9ea0a41d",
  "source": {
    "blob": "002764af8ecda69cfed0b94ec4f014a0353a2a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 257,
    "path": "GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac02eea8877c066c9ea0a41dff7f0a66258a99306d17af8c710cdc7e17e08f54",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e41f48e-481c-4f6c-c111-aafdab67b5a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one : (1 : K_hat R K).IsFiniteAdele := by
  rw [IsFiniteAdele, Filter.eventually_cofinite]
  have h_empty :
    {v : HeightOneSpectrum R | ¬(1 : v.adicCompletion K) ∈ v.adicCompletionIntegers K} = ∅ := by
    ext v; rw [mem_empty_iff_false, iff_false_iff]; intro hv
    rw [mem_setOf] at hv; apply hv; rw [mem_adicCompletionIntegers]
    exact le_of_eq Valued.v.map_one'
  -- Porting note: was `exact`, but `OfNat` got in the way.
  convert finite_empty
#align dedekind_domain.prod_adic_completions.is_finite_adele.one DedekindDomain.ProdAdicCompletions.IsFiniteAdele.one

end IsFiniteAdele

end ProdAdicCompletions

open ProdAdicCompletions.IsFiniteAdele

/-- The finite adèle ring of `R` is the restricted product over all maximal ideals `v` of `R`
of `adicCompletion` with respect to `adicCompletionIntegers`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002764af8ecda69cfed0b94ec4f014a0353a2a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
