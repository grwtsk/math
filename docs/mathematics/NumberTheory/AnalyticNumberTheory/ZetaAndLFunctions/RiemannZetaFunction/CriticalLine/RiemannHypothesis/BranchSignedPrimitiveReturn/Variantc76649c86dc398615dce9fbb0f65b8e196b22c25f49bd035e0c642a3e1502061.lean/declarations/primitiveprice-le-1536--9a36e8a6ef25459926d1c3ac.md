# primitivePrice_le_1536

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5b9b77d-ef3c-1801-cf13-138d8ebab10a",
  "kind": "theorem",
  "lexical_name": "primitivePrice_le_1536",
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
  "slug": "primitiveprice-le-1536--9a36e8a6ef25459926d1c3ac",
  "source": {
    "blob": "996a59d68cce97b64dbedace53875dbfb45438f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSignedPrimitiveReturn/Variantc76649c86dc398615dce9fbb0f65b8e196b22c25f49bd035e0c642a3e1502061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a36e8a6ef25459926d1c3ac29aa622f638aebe89b6f40528263c418317fc0f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSignedPrimitiveReturn/Variantc76649c86dc398615dce9fbb0f65b8e196b22c25f49bd035e0c642a3e1502061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5b9b77d-ef3c-1801-cf13-138d8ebab10a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitivePrice_le_1536 {A : ℝ} (hA : 1 ≤ A) : primitivePrice A ≤ 1536 := by
  have h0 : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have h1 : 440 / A ≤ (440 : ℝ) := (div_le_iff₀ h0).2 (by nlinarith)
  have h2 : 1056 / A ^ 2 ≤ (1056 : ℝ) :=
    (div_le_iff₀ (sq_pos_of_pos h0)).2 (by nlinarith)
  dsimp [primitivePrice]
  linarith

/-- A proved bound on the actual kernel slope would give exactly the note's variation price. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSignedPrimitiveReturn/Variantc76649c86dc398615dce9fbb0f65b8e196b22c25f49bd035e0c642a3e1502061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSignedPrimitiveReturn/Variantc76649c86dc398615dce9fbb0f65b8e196b22c25f49bd035e0c642a3e1502061.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `996a59d68cce97b64dbedace53875dbfb45438f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
