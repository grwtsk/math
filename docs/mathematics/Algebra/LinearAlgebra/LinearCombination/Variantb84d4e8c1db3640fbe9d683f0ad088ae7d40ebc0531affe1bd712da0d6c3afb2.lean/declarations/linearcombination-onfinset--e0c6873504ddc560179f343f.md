# linearCombination_onFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1428f8cd922fadbf2308bb22b216201f3e607eda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38aad7d9-29e0-c0c9-ee4d-ca68e2b62c11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d0a7f7f-f8ad-5d4e-a1a9-e7068300820a",
  "kind": "theorem",
  "lexical_name": "linearCombination_onFinset",
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
  "slug": "linearcombination-onfinset--e0c6873504ddc560179f343f",
  "source": {
    "blob": "1428f8cd922fadbf2308bb22b216201f3e607eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantb84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0c6873504ddc560179f343ff1a73c6a462905bad0bdf4a518bb36c65621312a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearCombination/Variantb84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d0a7f7f-f8ad-5d4e-a1a9-e7068300820a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearCombination_onFinset {s : Finset α} {f : α → R} (g : α → M)
    (hf : ∀ a, f a ≠ 0 → a ∈ s) :
    linearCombination R g (Finsupp.onFinset s f hf) = Finset.sum s fun x : α => f x • g x := by
  classical
  simp only [linearCombination_apply, Finsupp.sum, Finsupp.onFinset_apply, Finsupp.support_onFinset]
  rw [Finset.sum_filter_of_ne]
  intro x _ h
  contrapose! h
  simp [h]

variable [Module S M] [SMulCommClass R S M]

variable (S) in
/-- `Finsupp.bilinearCombination R S v f` is the linear combination of vectors in `v` with weights
in `f`, as a bilinear map of `v` and `f`.
In the absence of `SMulCommClass R S M`, use `Finsupp.linearCombination`.

See note [bundled maps over different rings] for why separate `R` and `S` semirings are used.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearCombination/Variantb84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantb84d4e8c1db3640fbe9d683f0ad088ae7d40ebc0531affe1bd712da0d6c3afb2.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1428f8cd922fadbf2308bb22b216201f3e607eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
