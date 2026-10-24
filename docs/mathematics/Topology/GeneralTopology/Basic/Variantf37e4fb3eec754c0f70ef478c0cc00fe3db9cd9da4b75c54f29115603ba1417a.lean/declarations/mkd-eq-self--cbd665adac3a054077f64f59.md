# mkD_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10e6781fec359e2692d32a1e3b81c2379fe8829a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f37e4fb3eec754c0f70ef478c0cc00fe3db9cd9da4b75c54f29115603ba1417a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6b77d14-ad7e-7f1c-39be-f6fa0308f83e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84a7eeae-20ef-c356-3dbe-5ad0fd80b788",
  "kind": "lemma",
  "lexical_name": "mkD_eq_self",
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
  "slug": "mkd-eq-self--cbd665adac3a054077f64f59",
  "source": {
    "blob": "10e6781fec359e2692d32a1e3b81c2379fe8829a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 350,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf37e4fb3eec754c0f70ef478c0cc00fe3db9cd9da4b75c54f29115603ba1417a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd665adac3a054077f64f59eecac3217569b3185e71ac34db54e6639fba6813",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf37e4fb3eec754c0f70ef478c0cc00fe3db9cd9da4b75c54f29115603ba1417a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84a7eeae-20ef-c356-3dbe-5ad0fd80b788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mkD_eq_self {f g : C(α, β)} : mkD f g = f :=
  mkD_of_continuous f.continuous

end mkD

section Gluing

variable {ι : Type*} (S : ι → Set α) (φ : ∀ i : ι, C(S i, β))
  (hφ : ∀ (i j) (x : α) (hxi : x ∈ S i) (hxj : x ∈ S j), φ i ⟨x, hxi⟩ = φ j ⟨x, hxj⟩)
  (hS : ∀ x : α, ∃ i, S i ∈ 𝓝 x)

/-- A family `φ i` of continuous maps `C(S i, β)`, where the domains `S i` contain a neighbourhood
of each point in `α` and the functions `φ i` agree pairwise on intersections, can be glued to
construct a continuous map in `C(α, β)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf37e4fb3eec754c0f70ef478c0cc00fe3db9cd9da4b75c54f29115603ba1417a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf37e4fb3eec754c0f70ef478c0cc00fe3db9cd9da4b75c54f29115603ba1417a.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10e6781fec359e2692d32a1e3b81c2379fe8829a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
