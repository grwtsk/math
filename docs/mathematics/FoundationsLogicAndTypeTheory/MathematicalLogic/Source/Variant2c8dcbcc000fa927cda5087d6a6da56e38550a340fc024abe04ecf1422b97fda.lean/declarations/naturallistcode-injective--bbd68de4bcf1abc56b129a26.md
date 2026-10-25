# naturalListCode_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff830de3-4fc1-2b4d-b4fa-4951d2ab8d55",
  "kind": "theorem",
  "lexical_name": "naturalListCode_injective",
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
  "slug": "naturallistcode-injective--bbd68de4bcf1abc56b129a26",
  "source": {
    "blob": "ecf7bba6ce45c4bcfe1aa2d92ea654ac7aeed271",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant2c8dcbcc000fa927cda5087d6a6da56e38550a340fc024abe04ecf1422b97fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbd68de4bcf1abc56b129a260fd2eec7abb3b4228df418adc239fa20b65cee50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant2c8dcbcc000fa927cda5087d6a6da56e38550a340fc024abe04ecf1422b97fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff830de3-4fc1-2b4d-b4fa-4951d2ab8d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturalListCode_injective : Function.Injective naturalListCode := by
  intro left
  induction left with
  | nil =>
      intro right equal
      cases right with
      | nil => rfl
      | cons head tail => simp [naturalListCode] at equal
  | cons head tail inductionHypothesis =>
      intro right equal
      cases right with
      | nil => simp [naturalListCode] at equal
      | cons otherHead otherTail =>
          simp only [naturalListCode, Nat.add_right_cancel_iff] at equal
          have parts := Nat.pair_eq_pair.mp equal
          congr
          · exact parts.1
          · exact inductionHypothesis parts.2

/-- A lossless natural code for canonical source records. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant2c8dcbcc000fa927cda5087d6a6da56e38550a340fc024abe04ecf1422b97fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variant2c8dcbcc000fa927cda5087d6a6da56e38550a340fc024abe04ecf1422b97fda.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf7bba6ce45c4bcfe1aa2d92ea654ac7aeed271` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
