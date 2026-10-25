# meromorphic_germ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70bf4b0ea65a661d631b19e28a7280bc29e1e6bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99c4dc7c-6d5f-88e4-30af-ad9a9dc58a4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af5f5351-68b3-cacb-a4f1-81b909853298",
  "kind": "theorem",
  "lexical_name": "meromorphic_germ_eq",
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
  "slug": "meromorphic-germ-eq--d7ae66ac0b432e6434c5621d",
  "source": {
    "blob": "70bf4b0ea65a661d631b19e28a7280bc29e1e6bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7ae66ac0b432e6434c5621d5f1d75b35dcb3633cee28d65704be97cc16d0da4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af5f5351-68b3-cacb-a4f1-81b909853298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphic_germ_eq {F G : ℂ → ℂ} {U : Set ℂ}
    (hF : MeromorphicOn F U) (hG : MeromorphicOn G U) (hU : IsPreconnected U)
    {b s : ℂ} (hb : b ∈ U) (hs : s ∈ U) (heq : F =ᶠ[𝓝[≠] b] G) :
    F =ᶠ[𝓝[≠] s] G := by
  have hd : MeromorphicOn (fun z ↦ F z - G z) U := hF.sub hG
  have hbzero : meromorphicOrderAt (fun z ↦ F z - G z) b = ⊤ :=
    meromorphicOrderAt_eq_top_iff.mpr (heq.mono (fun z hz ↦ sub_eq_zero.mpr hz))
  have hszero : meromorphicOrderAt (fun z ↦ F z - G z) s = ⊤ := by
    by_contra hne
    exact (hd.meromorphicOrderAt_ne_top_of_isPreconnected hU hs hb hne) hbzero
  exact (meromorphicOrderAt_eq_top_iff.mp hszero).mono (fun z hz ↦ sub_eq_zero.mp hz)

/-- The initial identity propagates as a germ wherever the Laplace integral is analytic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70bf4b0ea65a661d631b19e28a7280bc29e1e6bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
