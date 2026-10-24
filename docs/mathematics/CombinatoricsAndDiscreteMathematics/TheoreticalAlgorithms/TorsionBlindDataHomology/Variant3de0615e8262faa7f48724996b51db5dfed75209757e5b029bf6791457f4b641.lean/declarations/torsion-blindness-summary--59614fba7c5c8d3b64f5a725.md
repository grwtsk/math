# torsion_blindness_summary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78f12aaeba2d03e7afb45aecb7b9c354cdc96bb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae61f89e-5015-7e97-26af-8f1251cb71b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5042a77-7533-9e65-0229-1e670fd95571",
  "kind": "theorem",
  "lexical_name": "torsion_blindness_summary",
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
  "slug": "torsion-blindness-summary--59614fba7c5c8d3b64f5a725",
  "source": {
    "blob": "78f12aaeba2d03e7afb45aecb7b9c354cdc96bb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 389,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59614fba7c5c8d3b64f5a725482f479e987b9cdd5866156d8c6ad9a3c27002b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5042a77-7533-9e65-0229-1e670fd95571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsion_blindness_summary
    (P : IntegralHomologyProfile)
    (S : FiniteFieldSchedule)
    (degrees : List Nat) :
    fieldObservation P.forgetExponents = fieldObservation P ∧
      scheduledObservation S degrees (fieldObservation P.forgetExponents) =
        scheduledObservation S degrees (fieldObservation P) := by
  exact ⟨fieldObservation_forgetExponents_eq P,
    scheduledObservation_forgetExponents S degrees P⟩

end TorsionBlindDataHomology
end Cube
end Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TorsionBlindDataHomology/Variant3de0615e8262faa7f48724996b51db5dfed75209757e5b029bf6791457f4b641.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78f12aaeba2d03e7afb45aecb7b9c354cdc96bb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
