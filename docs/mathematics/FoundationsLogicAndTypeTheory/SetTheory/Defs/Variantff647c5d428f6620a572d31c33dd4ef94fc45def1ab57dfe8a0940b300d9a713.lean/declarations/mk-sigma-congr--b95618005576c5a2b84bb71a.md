# mk_sigma_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1115b0d8e6a1c4195c18478e36ec5b81a7a003b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff647c5d428f6620a572d31c33dd4ef94fc45def1ab57dfe8a0940b300d9a713.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c0eb87c-280d-ad8d-4235-8dc4d83d9913",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8492f3ce-c136-e7e0-0ffe-367ecefc23a7",
  "kind": "theorem",
  "lexical_name": "mk_sigma_congr",
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
  "slug": "mk-sigma-congr--b95618005576c5a2b84bb71a",
  "source": {
    "blob": "1115b0d8e6a1c4195c18478e36ec5b81a7a003b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 352,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantff647c5d428f6620a572d31c33dd4ef94fc45def1ab57dfe8a0940b300d9a713.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b95618005576c5a2b84bb71a79f1c556e4bc6999facf8e8325c78be265a2d7f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantff647c5d428f6620a572d31c33dd4ef94fc45def1ab57dfe8a0940b300d9a713.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8492f3ce-c136-e7e0-0ffe-367ecefc23a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_sigma_congr {ι ι' : Type u} {f : ι → Type v} {g : ι' → Type v} (e : ι ≃ ι')
    (h : ∀ i, #(f i) = #(g (e i))) : #(Σ i, f i) = #(Σ i, g i) :=
  mk_congr <| Equiv.sigmaCongr e fun i ↦ Classical.choice <| Cardinal.eq.mp (h i)

/-- Similar to `mk_sigma_congr` with indexing types in different universes. This is not a strict
generalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantff647c5d428f6620a572d31c33dd4ef94fc45def1ab57dfe8a0940b300d9a713.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Defs/Variantff647c5d428f6620a572d31c33dd4ef94fc45def1ab57dfe8a0940b300d9a713.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1115b0d8e6a1c4195c18478e36ec5b81a7a003b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
