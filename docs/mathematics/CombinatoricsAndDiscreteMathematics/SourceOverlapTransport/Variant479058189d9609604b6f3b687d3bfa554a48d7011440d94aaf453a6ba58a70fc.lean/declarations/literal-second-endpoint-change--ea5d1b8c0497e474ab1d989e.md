# literal_second_endpoint_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c82959e4-0365-acdf-391f-970618e2a77a",
  "kind": "theorem",
  "lexical_name": "literal_second_endpoint_change",
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
  "slug": "literal-second-endpoint-change--ea5d1b8c0497e474ab1d989e",
  "source": {
    "blob": "2735a9614083f6df5069ee993a7a6e96ba3780ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant479058189d9609604b6f3b687d3bfa554a48d7011440d94aaf453a6ba58a70fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea5d1b8c0497e474ab1d989ed7769b2aad298380fcf7f3117ba27072a6a5e462",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant479058189d9609604b6f3b687d3bfa554a48d7011440d94aaf453a6ba58a70fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c82959e4-0365-acdf-391f-970618e2a77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_second_endpoint_change (A B : ℝ) (hA : 1 ≤ A) (hB : 1 ≤ B) :
    synthesis (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B) (secondAt B) -
      synthesis (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A) (secondAt A) =
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB) -
          originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A ∩ longInventory B) false false
          (centeredCoefficient (vaughanCutoff A)) +
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory A ∩ longInventory B) false false
          (fun m => centeredCoefficient (vaughanCutoff B) m -
            centeredCoefficient (vaughanCutoff A) m) +
      finiteProfile (originalSourceL2 B (lt_of_lt_of_le zero_lt_one hB))
        (longInventory B \ longInventory A) false false
          (centeredCoefficient (vaughanCutoff B)) -
      finiteProfile (originalSourceL2 A (lt_of_lt_of_le zero_lt_one hA))
        (longInventory A \ longInventory B) false false
          (centeredCoefficient (vaughanCutoff A)) := by
  unfold secondAt centeredCoordinates
  exact synthesis_endpoint_change _ _ _ _ false false _ _

end FormalResearch.MutationGame.SourceOverlapTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant479058189d9609604b6f3b687d3bfa554a48d7011440d94aaf453a6ba58a70fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOverlapTransport/Variant479058189d9609604b6f3b687d3bfa554a48d7011440d94aaf453a6ba58a70fc.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2735a9614083f6df5069ee993a7a6e96ba3780ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
