# mod07_semanticEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82447d6a-4cf7-e8ae-153e-6764c2bf4b65",
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
  "slug": "mod07-semanticequivalence--e86f3f5fb3a296a6e28c327e",
  "source": {
    "blob": "6c626cf44c20d3dc119c898b382cda3739758b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD07SemanticEquivalence/Variant9a62a95eadd06bfe596511a049c7c7e677fa6f313c012f3a750a0066b4a497e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e86f3f5fb3a296a6e28c327e627f93ef0ff405d59e11ae322127f93c5afad9e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD07SemanticEquivalence/Variant9a62a95eadd06bfe596511a049c7c7e677fa6f313c012f3a750a0066b4a497e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82447d6a-4cf7-e8ae-153e-6764c2bf4b65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–31.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD07SemanticEquivalence/Variant9a62a95eadd06bfe596511a049c7c7e677fa6f313c012f3a750a0066b4a497e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MOD07SemanticEquivalence/Variant9a62a95eadd06bfe596511a049c7c7e677fa6f313c012f3a750a0066b4a497e3.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c626cf44c20d3dc119c898b382cda3739758b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
