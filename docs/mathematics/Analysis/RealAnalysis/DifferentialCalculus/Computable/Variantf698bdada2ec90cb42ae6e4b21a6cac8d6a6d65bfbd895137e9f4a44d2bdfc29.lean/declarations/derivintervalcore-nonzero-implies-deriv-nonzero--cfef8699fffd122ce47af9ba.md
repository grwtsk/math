# derivIntervalCore_nonzero_implies_deriv_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "747babc0407118a18da9ff930c8c65b2fc3ff6ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f34f894-0d66-29c4-64df-f6096e70ffa8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e19cc289-c563-70f7-1a0b-f6526e9d7b74",
  "kind": "theorem",
  "lexical_name": "derivIntervalCore_nonzero_implies_deriv_nonzero",
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
  "slug": "derivintervalcore-nonzero-implies-deriv-nonzero--cfef8699fffd122ce47af9ba",
  "source": {
    "blob": "747babc0407118a18da9ff930c8c65b2fc3ff6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 301,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfef8699fffd122ce47af9bac1214f47844d0b8bbcbc5da091657f225d9690af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e19cc289-c563-70f7-1a0b-f6526e9d7b74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivIntervalCore_nonzero_implies_deriv_nonzero (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (cfg : EvalConfig)
    (h : ¬(derivIntervalCore e I cfg).containsZero) :
    ∀ x ∈ I, deriv (evalFunc1 e) x ≠ 0 := by
  intro x hx hcontra
  have hmem := derivIntervalCore_correct e hsupp I x hx cfg
  simp only [IntervalRat.mem_def] at hmem
  simp only [IntervalRat.containsZero, not_and_or, not_le] at h
  rw [hcontra] at hmem
  rcases h with hlo | hhi
  · exact absurd hmem.1 (not_le.mpr (by exact_mod_cast hlo))
  · exact absurd hmem.2 (not_le.mpr (by exact_mod_cast hhi))

/-- If derivIntervalCore.lo > 0, then the derivative is positive everywhere on I. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747babc0407118a18da9ff930c8c65b2fc3ff6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
