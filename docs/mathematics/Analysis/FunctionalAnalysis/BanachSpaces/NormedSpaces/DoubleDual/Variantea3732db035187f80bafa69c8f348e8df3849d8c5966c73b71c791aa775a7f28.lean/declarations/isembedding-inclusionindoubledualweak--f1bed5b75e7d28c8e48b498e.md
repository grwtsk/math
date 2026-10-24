# isEmbedding_inclusionInDoubleDualWeak

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4228e4c2f2be00a833be375313587e3cf9b7061",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51da2262-9b47-08a5-b906-b0b86e360e78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c82db84-756b-1a65-1f7f-5f8c63be9485",
  "kind": "theorem",
  "lexical_name": "isEmbedding_inclusionInDoubleDualWeak",
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
  "slug": "isembedding-inclusionindoubledualweak--f1bed5b75e7d28c8e48b498e",
  "source": {
    "blob": "a4228e4c2f2be00a833be375313587e3cf9b7061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1bed5b75e7d28c8e48b498e175e480f66c776f949ba145c022433df2ed13d33",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c82db84-756b-1a65-1f7f-5f8c63be9485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmbedding_inclusionInDoubleDualWeak :
    IsEmbedding (inclusionInDoubleDualWeak 𝕜 X) where
  eq_induced := Eq.symm induced_compose
  injective := StrongDual.toWeakDual.injective.comp
    (inclusionInDoubleDualLi (𝕜 := 𝕜) (E := X)).injective

/-- If `S` is bounded set in `WeakSpace X` and the weak-star closure of its image under
the embedding into the weak-star double dual lies in the range of that embedding,
then `closure S` is compact in the weak topology.

This combines Banach–Alaoglu (compactness of bounded weak-star–closed sets) with the topological
embedding `inclusionInDoubleDualWeak_isEmbedding` to transfer compactness back to the weak
topology on `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variantea3732db035187f80bafa69c8f348e8df3849d8c5966c73b71c791aa775a7f28.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4228e4c2f2be00a833be375313587e3cf9b7061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
