# bounded_below

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e702fd38f691e81ed9c978ac8b92ef345716230",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4501a72-d90f-4277-f4bd-0884c7388113",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4edf4aa5-7bb4-49ee-c193-dcf873572092",
  "kind": "theorem",
  "lexical_name": "bounded_below",
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
  "slug": "bounded-below--a736db208a902b6e271b3427",
  "source": {
    "blob": "4e702fd38f691e81ed9c978ac8b92ef345716230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a736db208a902b6e271b342776158e0d8ffb066d33ea547f69a24020d46e6a4e",
  "verification": {
    "reference": "docs/verification/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4edf4aa5-7bb4-49ee-c193-dcf873572092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bounded_below (coercive : IsCoercive B) : ∃ C, 0 < C ∧ ∀ v, C * ‖v‖ ≤ ‖B♯ v‖ := by
  rcases coercive with ⟨C, C_ge_0, coercivity⟩
  refine ⟨C, C_ge_0, ?_⟩
  intro v
  by_cases h : 0 < ‖v‖
  · refine (mul_le_mul_right h).mp ?_
    calc
      C * ‖v‖ * ‖v‖ ≤ B v v := coercivity v
      _ = ⟪B♯ v, v⟫_ℝ := (continuousLinearMapOfBilin_apply B v v).symm
      _ ≤ ‖B♯ v‖ * ‖v‖ := real_inner_le_norm (B♯ v) v
  · have : v = 0 := by simpa using h
    simp [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaxMilgram/Variant395a5731e04b9a8de528916ecd7d245627db0907ccd109433205a634083e7524.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e702fd38f691e81ed9c978ac8b92ef345716230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
