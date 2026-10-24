# sqrt_commonScale_two_right_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bad05445-1519-5a5a-67ef-c5010565c39a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:050d90ca-644b-2682-6162-06bb96484bf5",
  "kind": "theorem",
  "lexical_name": "sqrt_commonScale_two_right_admissible",
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
  "slug": "sqrt-commonscale-two-right-admissible--912b6c527c235b065dbfd9ce",
  "source": {
    "blob": "5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 88,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:912b6c527c235b065dbfd9cea5642e73f4e4fb398b378ac9404e90500fba143e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:050d90ca-644b-2682-6162-06bb96484bf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_commonScale_two_right_admissible (N u v : ℕ) (hv : 1 ≤ v)
    (hG : 8 ≤ N / max u v) :
    2 ≤ Nat.sqrt (N / max u (2*v)) ∧
      Nat.sqrt (N / max u (2*v)) ≤ Nat.sqrt (N / max u v) := by
  simpa only [max_comm] using sqrt_commonScale_two_left_admissible N v u hv
    (by simpa only [max_comm] using hG)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsAudit/Variant5f749c52293e37f6b6b0f3293ace7fb1ef86ea6e00ff3ecec0f36c5e0c288780.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e1c3dd16333d4f197e16a5ca35b0b3d6deb1a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
