# Function.Injective.hasProd_comap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b14a15efd33bc3b47a7872b78d4f155c9bfa2660",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11fac598-e140-959e-eaed-abcfdddc373e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9298368a-f979-1004-330e-207dac5532bf",
  "kind": "theorem",
  "lexical_name": "Function.Injective.hasProd_comap_iff",
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
  "slug": "function-injective-hasprod-comap-iff--b049ea9a269ead0c3b0cf51c",
  "source": {
    "blob": "b14a15efd33bc3b47a7872b78d4f155c9bfa2660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b049ea9a269ead0c3b0cf51cbc227be9cad39bf5916953a0277e056849163e3c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9298368a-f979-1004-330e-207dac5532bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Injective.hasProd_comap_iff {g : γ → β} (hg : Injective g)
    (hf : ∀ x, x ∉ Set.range g → f x = 1) :
    HasProd (f ∘ g) a (L.comap ⟨g, hg⟩) ↔ HasProd f a L := by
  simp only [HasProd, SummationFilter.comap_filter, tendsto_map'_iff, comp_apply,
    Embedding.coeFn_mk, Function.comp_def]
  refine tendsto_congr fun s ↦ ?_
  rw [s.prod_preimage]
  exact fun x _ h ↦ hf x h

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b14a15efd33bc3b47a7872b78d4f155c9bfa2660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
