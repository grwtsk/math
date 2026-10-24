# mem_interiorInventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b8f2771-8f25-65a7-b511-a2950139b05d",
  "kind": "theorem",
  "lexical_name": "mem_interiorInventory",
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
  "slug": "mem-interiorinventory--f69eff0528951fd1b7a63e53",
  "source": {
    "blob": "8a7c3ae55ff1bb89e9100564337f170edd412908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f69eff0528951fd1b7a63e5345d0d4f352304aae3341834e1234b6dd6aa68a59",
  "verification": {
    "reference": "docs/verification/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b8f2771-8f25-65a7-b511-a2950139b05d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_interiorInventory {n : ℕ} {X : ℝ} :
    n ∈ interiorInventory X ↔ 2 ≤ n ∧ (n : ℝ) < X ∧ IsPrimePow n := by
  simp [interiorInventory, ArithmeticFunction.vonMangoldt_pos_iff]

/-- Every strict interior positive-weight index is retained in the literal closed floor sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7c3ae55ff1bb89e9100564337f170edd412908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
