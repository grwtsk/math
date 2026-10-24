# map_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cf3cc53d92c0ee2a6598e6765475d5a62e06c60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 466,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:578db9ca-fb3a-39a9-4516-b9cd2e99c084",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e0e38a8-9207-0e48-0317-ac311f18ac5f",
  "kind": "theorem",
  "lexical_name": "map_div",
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
  "slug": "map-div--73dc335b6e50276d0ac33abe",
  "source": {
    "blob": "6cf3cc53d92c0ee2a6598e6765475d5a62e06c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 466,
    "path": "GRWTSK/Algebra/Operations/Variantb8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73dc335b6e50276d0ac33abea87b51016693c332087cd7e3b6ac4b223893b064",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variantb8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e0e38a8-9207-0e48-0317-ac311f18ac5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem map_div (I J : FractionalIdeal R₁⁰ K) (h : K ≃ₐ[R₁] K') :
    (I / J).map (h : K →ₐ[R₁] K') = I.map h / J.map h := by
  by_cases H : J = 0
  · rw [H, div_zero, FractionalIdeal.map_zero, div_zero]
  · -- Porting note: `simp` wouldn't apply these lemmas so do them manually using `rw`
    rw [← coeToSubmodule_inj, div_nonzero H, div_nonzero (map_ne_zero _ H)]
    simp [Submodule.map_div]

-- Porting note: doesn't need to be @[simp] because this follows from `map_one` and `map_div`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variantb8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variantb8f4ee45b4dd9f8fd554557d4218d29bdd680238c7a22294160f94aca1fce486.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cf3cc53d92c0ee2a6598e6765475d5a62e06c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
