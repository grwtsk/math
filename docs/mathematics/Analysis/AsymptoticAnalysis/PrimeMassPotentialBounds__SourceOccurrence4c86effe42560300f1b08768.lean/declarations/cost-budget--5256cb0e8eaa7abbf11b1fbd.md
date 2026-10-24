# cost_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9305ad5575f1e86d3109712e26845bda583a4b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:414f0d87-3c93-23ad-8dc0-0fbbcbaf9820",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "e9305ad5575f1e86d3109712e26845bda583a4b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/Analysis/Asymptotics/PrimeMassPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de415000-a5c1-85ba-3afd-db48e5174d6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:521f1248-fddb-cd84-33c3-c0b4843ef89b",
  "kind": "theorem",
  "lexical_name": "cost_budget",
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
  "slug": "cost-budget--5256cb0e8eaa7abbf11b1fbd",
  "source": {
    "blob": "e9305ad5575f1e86d3109712e26845bda583a4b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/Analysis/Asymptotics/PrimeMassPotentialBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5256cb0e8eaa7abbf11b1fbde25347f8d15022c939f2ad1afefbad3cf16ac65c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:521f1248-fddb-cd84-33c3-c0b4843ef89b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cost_budget {T η C C_M : ℝ} (hT : 0 ≤ T) (hC : 0 ≤ C)
    (hM : 0 ≤ C_M) (hprime : PrimeHarmonicEstimate C_M) (bc : BudgetedChain T η) :
    Cost.prefixSum (fun j => C * harmonicMass (bc.chain.blocks j)) bc.chain.length ≤
      (C * C_M) * Real.log (1 + T) + C * C_M * Real.log 2 := by
  rw [prefixSum_const_mul]
  calc
    C * Cost.prefixSum (fun j => harmonicMass (bc.chain.blocks j)) bc.chain.length ≤
        C * harmonicMass (primeInventory T) := mul_le_mul_of_nonneg_left bc.massBudget hC
    _ ≤ C * (C_M * Real.log (2 + T)) := mul_le_mul_of_nonneg_left (hprime T hT) hC
    _ ≤ C * (C_M * (Real.log 2 + Real.log (1 + T))) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_left (log_horizon_subadditive hT) hM) hC
    _ = (C * C_M) * Real.log (1 + T) + C * C_M * Real.log 2 := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PrimeMassPotentialBounds__SourceOccurrence4c86effe42560300f1b08768.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/PrimeMassPotentialBounds.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9305ad5575f1e86d3109712e26845bda583a4b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
