# boolNatNoCarrierEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85de18ed5097add890e4f97cb3f9b2fd8ec66d2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7eeae1c8c2b3756736b68a355dc0e9cfb33c1490918e1d224c868ffe6fb78e54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7cbc56c-fdfb-ff0a-facb-ec8ea9c11e4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:463b13a3-8b37-932d-aeaf-70b4e062d7ea",
  "kind": "theorem",
  "lexical_name": "boolNatNoCarrierEquivalence",
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
  "slug": "boolnatnocarrierequivalence--b3a66c6eeed51a2a962bb0b2",
  "source": {
    "blob": "85de18ed5097add890e4f97cb3f9b2fd8ec66d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 298,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant7eeae1c8c2b3756736b68a355dc0e9cfb33c1490918e1d224c868ffe6fb78e54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3a66c6eeed51a2a962bb0b2fd574a7912578d3f0f9f51975fbad8e85da1cec3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant7eeae1c8c2b3756736b68a355dc0e9cfb33c1490918e1d224c868ffe6fb78e54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:463b13a3-8b37-932d-aeaf-70b4e062d7ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boolNatNoCarrierEquivalence :
    QuantifierCarrierEquivalence Bool Nat → False := by
  intro equivalence
  have injective : Function.Injective equivalence.toSource := by
    intro left right equality
    have mapped := congrArg equivalence.toTarget equality
    simpa only [equivalence.targetRoundTrip] using mapped
  generalize hzero : equivalence.toSource 0 = sourceZero
  generalize hone : equivalence.toSource 1 = sourceOne
  generalize htwo : equivalence.toSource 2 = sourceTwo
  cases sourceZero <;> cases sourceOne <;> cases sourceTwo
  all_goals
    first
    | exact Nat.zero_ne_one (injective (hzero.trans hone.symm))
    | exact (by decide : (0 : Nat) ≠ 2)
        (injective (hzero.trans htwo.symm))
    | exact (by decide : (1 : Nat) ≠ 2)
        (injective (hone.trans htwo.symm))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant7eeae1c8c2b3756736b68a355dc0e9cfb33c1490918e1d224c868ffe6fb78e54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant7eeae1c8c2b3756736b68a355dc0e9cfb33c1490918e1d224c868ffe6fb78e54.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85de18ed5097add890e4f97cb3f9b2fd8ec66d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
