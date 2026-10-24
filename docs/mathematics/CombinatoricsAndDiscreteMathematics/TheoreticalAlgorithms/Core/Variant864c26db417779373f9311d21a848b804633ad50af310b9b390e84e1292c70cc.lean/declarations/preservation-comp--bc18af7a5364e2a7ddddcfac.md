# preservation_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:faa21b90-67f5-affc-0238-0cb2bb237f82",
  "kind": "theorem",
  "lexical_name": "preservation_comp",
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
  "slug": "preservation-comp--bc18af7a5364e2a7ddddcfac",
  "source": {
    "blob": "340423edfb15ab76a0417cbbaa6896ea350f5f7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 557,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc18af7a5364e2a7ddddcfac9a32652456792ad0da3f0e241a94d1c409de07db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faa21b90-67f5-affc-0238-0cb2bb237f82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preservation_comp
    {source : Theory.{uSO, uSP}}
    {middle : Theory.{uTO, uTP}}
    {target : Theory.{uUO, uUP}}
    {sourceFoundation middleFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {middleVersion : MathematicalTheoryVersion middle middleFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {middleAssumptions : AssumptionSet middle}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {middleScope : TransferScope middle}
    {targetScope : TransferScope target}
    {first : Translation source middle sourceVersion middleVersion
      sourceAssumptions middleAssumptions sourceScope middleScope}
    {second : Translation middle target middleVersion targetVersion
      middleAssumptions targetAssumptions middleScope targetScope}
    (composedQuantifierMapEvidence : QuantifierSpecifiedMapEvidence source target
      (fun object => second.mapObject (first.mapObject object)))
    (firstPreserves : PreservesTruth first)
    (secondPreserves : PreservesTruth second) :
    PreservesTruth (first.comp second composedQuantifierMapEvidence) := by
  refine { sound := ?_ }
  intro proposition sourceInScope sourceProof targetAssumptionsHold
  exact secondPreserves.sound (first.mapProposition proposition)
    (first.propositionScopeTranslation proposition sourceInScope)
    (firstPreserves.sound proposition sourceInScope sourceProof)
    targetAssumptionsHold

/--
Reflection composes in the reverse operational order: reflect through the
second translation first, then through the first translation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant864c26db417779373f9311d21a848b804633ad50af310b9b390e84e1292c70cc.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `340423edfb15ab76a0417cbbaa6896ea350f5f7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
