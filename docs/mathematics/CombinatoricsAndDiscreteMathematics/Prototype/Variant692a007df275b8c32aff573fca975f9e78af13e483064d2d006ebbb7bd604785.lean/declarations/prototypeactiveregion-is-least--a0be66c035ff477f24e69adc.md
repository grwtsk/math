# prototypeActiveRegion_is_least

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47ef5397bc94b130b2b6155619386d04870b771e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/692a007df275b8c32aff573fca975f9e78af13e483064d2d006ebbb7bd604785.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a511a7df-09b4-e55b-3aae-bfe96f9cb9a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bb46b2e-8229-f472-044c-26f391618792",
  "kind": "theorem",
  "lexical_name": "prototypeActiveRegion_is_least",
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
  "slug": "prototypeactiveregion-is-least--a0be66c035ff477f24e69adc",
  "source": {
    "blob": "47ef5397bc94b130b2b6155619386d04870b771e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prototype/Variant692a007df275b8c32aff573fca975f9e78af13e483064d2d006ebbb7bd604785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0be66c035ff477f24e69adcde9e686b676551b8df5fcefe5d49a0976cbca37e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Prototype/Variant692a007df275b8c32aff573fca975f9e78af13e483064d2d006ebbb7bd604785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bb46b2e-8229-f472-044c-26f391618792`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prototypeActiveRegion_is_least :
    prototypeAttentionRoots ⊆ prototypeActiveRegion.activeModels ∧
    (∀ {model}, model ∈ prototypeActiveRegion.activeModels →
      prototypeRegistry.dependencyGraph.dependsOn model ⊆
        prototypeActiveRegion.activeModels) ∧
    prototypeActiveRegion.omittedDependencies = ∅ ∧
    ∀ other : ActiveModelRegion prototypeRegistry,
      prototypeAttentionRoots ⊆ other.activeModels →
      (∀ {model}, model ∈ other.activeModels →
        prototypeRegistry.dependencyGraph.dependsOn model ⊆
          other.activeModels) →
      prototypeActiveRegion.activeModels ⊆ other.activeModels :=
  ActiveModelRegion.activeClosure_is_least_dependencyClosedRegion
    prototypeRegistry prototypeAttentionRoots
    (fun model _ => prototypeRegistry.Version model)
    (fun _ _ => rfl)
    ⟨"attention:five-model-prototype:dependency-closure-v1"⟩

/-- Compact completion predicate for the exact finite structural layer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Prototype/Variant692a007df275b8c32aff573fca975f9e78af13e483064d2d006ebbb7bd604785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Prototype/Variant692a007df275b8c32aff573fca975f9e78af13e483064d2d006ebbb7bd604785.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47ef5397bc94b130b2b6155619386d04870b771e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
