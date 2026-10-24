# HasBasis.biInf_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "157ce7b261eb67521c777cb6dfc4f30a76c98e45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f77eb36-cdf3-f95f-602a-a1dd3539966a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:042cdaef-0253-3046-f3ca-e4262581788f",
  "kind": "theorem",
  "lexical_name": "HasBasis.biInf_finset",
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
  "slug": "hasbasis-biinf-finset--716dd6d57bf0ddabc02f869b",
  "source": {
    "blob": "157ce7b261eb67521c777cb6dfc4f30a76c98e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:716dd6d57bf0ddabc02f869b288af31aec339d6a5ddf1fad21b5c03644723ca4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:042cdaef-0253-3046-f3ca-e4262581788f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.biInf_finset {ι : Type*} {ι' : ι → Type*} (I : Finset ι)
    {l : ι → Filter α} {p : ∀ i, ι' i → Prop} {s : ∀ i, ι' i → Set α}
    (hl : ∀ i ∈ I, (l i).HasBasis (p i) (s i)) :
    (⨅ i ∈ I, l i).HasBasis (fun f : ∀ i : I, ι' i ↦ ∀ i : I, p i (f i))
      fun f ↦ ⋂ i : I, s i (f i) := by
  rw [iInf_subtype']
  exact HasBasis.iInf_of_finite fun i : I ↦ hl i i.2

open scoped Function in -- required for scoped `on` notation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant3b708dd87a7b593a1d1e883999e0449064b9387050faae4378972fd785d7b049.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `157ce7b261eb67521c777cb6dfc4f30a76c98e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
