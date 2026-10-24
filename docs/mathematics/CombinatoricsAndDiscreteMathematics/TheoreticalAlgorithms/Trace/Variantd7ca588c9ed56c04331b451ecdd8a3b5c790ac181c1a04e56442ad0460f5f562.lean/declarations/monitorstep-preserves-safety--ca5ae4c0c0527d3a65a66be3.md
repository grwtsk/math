# MonitorStep.preserves_safety

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26a5cc3d-a2fb-b434-7972-3a777a45743f",
  "kind": "theorem",
  "lexical_name": "MonitorStep.preserves_safety",
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
  "slug": "monitorstep-preserves-safety--ca5ae4c0c0527d3a65a66be3",
  "source": {
    "blob": "7e9ab0179cf972ac1427b65f6d635cebd4a0f7e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca5ae4c0c0527d3a65a66be35c384aba4d67d2c7aaf116ebba3e79c2ca1d58e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a5cc3d-a2fb-b434-7972-3a777a45743f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonitorStep.preserves_safety
    {before after : MonitorState}
    {event : CapabilityEvent}
    (safe : before.Safe)
    (step : MonitorStep before event after) :
    after.Safe := by
  cases step with
  | revoke future =>
      intro record listed
      have old := safe record listed
      exact
        ⟨Nat.le_trans old.1 (Nat.le_of_lt future),
          old.2.with_future_revocation _
            (Nat.lt_of_le_of_lt old.1 future)⟩
  | execute future authorization =>
      intro record listed
      simp only [List.mem_cons] at listed
      rcases listed with rfl | listed
      · exact ⟨Nat.le_refl _, authorization⟩
      · have old := safe record listed
        exact
          ⟨Nat.le_trans old.1 (Nat.le_of_lt future), old.2⟩
  | handoff future =>
      intro record listed
      have old := safe record listed
      exact
        ⟨Nat.le_trans old.1 (Nat.le_of_lt future), old.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variantd7ca588c9ed56c04331b451ecdd8a3b5c790ac181c1a04e56442ad0460f5f562.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e9ab0179cf972ac1427b65f6d635cebd4a0f7e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
