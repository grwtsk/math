# three_quarter_lower_tail_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f8ec1ab-8092-604c-661d-1211867d582a",
  "kind": "theorem",
  "lexical_name": "three_quarter_lower_tail_exact",
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
  "slug": "three-quarter-lower-tail-exact--13019cfc577f36a7a356f655",
  "source": {
    "blob": "b354adc673c15423a4e5b3b43daa8fe2fe8b40f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 95,
    "path": "GRWTSK/Combinatorics/Sequences/PartitionExposureChecks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13019cfc577f36a7a356f655ae31595c5a5c0550aa7082ef9b2a581ecd40925a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f8ec1ab-8092-604c-661d-1211867d582a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_quarter_lower_tail_exact :
    lowerTailProbability (Finset.univ : Finset (Fin 4)) {0, 1, 2} 2 (1 / 2) = 0 := by
  classical
  have hcount : (twoSubsetSpace.filter
      (fun R => (R ∩ ({0, 1, 2} : Finset (Fin 4))).card = 0)).card = 0 := by decide
  have hpred (R : Finset (Fin 4)) :
      ((R ∩ ({0, 1, 2} : Finset (Fin 4))).card : ℝ) < (1 / 2 : ℝ) * (2 : ℕ) ↔
        (R ∩ ({0, 1, 2} : Finset (Fin 4))).card = 0 := by
    have hscale : (1 / 2 : ℝ) * (2 : ℕ) = 1 := by norm_num
    rw [hscale]
    constructor
    · intro h
      have hn : (R ∩ ({0, 1, 2} : Finset (Fin 4))).card < 1 := by exact_mod_cast h
      omega
    · intro h
      rw [h]
      norm_num
  unfold lowerTailProbability
  simp_rw [hpred]
  change ((twoSubsetSpace.filter
    (fun R => (R ∩ ({0, 1, 2} : Finset (Fin 4))).card = 0)).card : ℝ) / _ = 0
  rw [hcount]
  simp

/-- Removing the required density hypothesis makes the source bound false:
an empty success set has lower-tail probability one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/PartitionExposureChecks.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b354adc673c15423a4e5b3b43daa8fe2fe8b40f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
