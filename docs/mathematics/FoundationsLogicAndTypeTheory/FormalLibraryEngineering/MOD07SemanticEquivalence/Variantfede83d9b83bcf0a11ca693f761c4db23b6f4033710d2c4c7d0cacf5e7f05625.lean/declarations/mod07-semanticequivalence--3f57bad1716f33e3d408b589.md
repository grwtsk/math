# mod07_semanticEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b2005b4395a562abaaeefb9d48639f6df0793c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5809f24-4077-ce90-4816-261d7ecda082",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27964c93-7fdf-7fc3-5bd4-c77cadd03328",
  "kind": "theorem",
  "lexical_name": "mod07_semanticEquivalence",
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
  "slug": "mod07-semanticequivalence--3f57bad1716f33e3d408b589",
  "source": {
    "blob": "9b2005b4395a562abaaeefb9d48639f6df0793c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD07SemanticEquivalence/Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f57bad1716f33e3d408b589753885f9d0b5fa53b18d5df57c4d31ea2a1152af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD07SemanticEquivalence/Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27964c93-7fdf-7fc3-5bd4-c77cadd03328`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod07_semanticEquivalence
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hSource : SemanticSourceEffective S) :
    EquivalenceWitness (semanticPullbackEff S hSource) := by
  have hFF := registry.modFullFaithful
  exact equivalenceRestrictCodomain
    S.functors.SemanticPullback
    (fun Y => ModuliEffectivityCertificate S.moduli Y)
    hSource
    hFF.1
    hFF.2
    (fun Y hY => registry.modPipeline Y hY)

end FCRS.Algebraization.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD07SemanticEquivalence/Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD07SemanticEquivalence/Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b2005b4395a562abaaeefb9d48639f6df0793c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
