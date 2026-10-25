# compositeHasOrderedMiddle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:552ac060-3c60-caf4-e3ee-e5bf0b4530a5",
  "kind": "theorem",
  "lexical_name": "compositeHasOrderedMiddle",
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
  "slug": "compositehasorderedmiddle--7cd9f8ab2469bcdb7dec57ca",
  "source": {
    "blob": "41cd029be2cacea36e5b3716963b31ff5d717fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 446,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cd9f8ab2469bcdb7dec57ca22f1d0821e0689b28c2121111a61f15c48c21246",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:552ac060-3c60-caf4-e3ee-e5bf0b4530a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compositeHasOrderedMiddle
    {graph : TransferDependencyGraph.{uNode}}
    {middleTheory middleProposition : VersionId}
    {first second : TranslationLineage} {source target : graph.Node}
    (realization : TranslationLineageRealization graph
      (.composite middleTheory middleProposition first second) source target) :
    ∃ (middle : graph.Node),
      graph.dependencyRank source < graph.dependencyRank middle ∧
      graph.dependencyRank middle < graph.dependencyRank target ∧
      (graph.node middle).theoryVersionArtifact.identity = middleTheory ∧
      (graph.node middle).propositionArtifact = some ⟨middleProposition⟩ := by
  cases realization with
  | composite middle theoryExact propositionExact
      firstRealization secondRealization =>
      exact ⟨middle,
        firstRealization.rankIncreases, secondRealization.rankIncreases,
        theoryExact, propositionExact⟩

end TranslationLineageRealization

/--
Complete generic transfer derivation.  The target theorem is required to be
the exact canonical application of the supplied source theorem and
preservation law.  The graph edge separately records provenance and validation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variantf5304fd3c472bbd035b7f183afafd1d8bd52da39318860c6b90e638eee1d6936.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41cd029be2cacea36e5b3716963b31ff5d717fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
