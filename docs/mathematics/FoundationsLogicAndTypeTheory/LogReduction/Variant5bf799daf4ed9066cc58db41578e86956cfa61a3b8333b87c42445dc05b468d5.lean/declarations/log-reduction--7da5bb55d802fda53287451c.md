# log_reduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9360f828-dc2e-6889-3d73-7b7b25df85de",
  "kind": "theorem",
  "lexical_name": "log_reduction",
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
  "slug": "log-reduction--7da5bb55d802fda53287451c",
  "source": {
    "blob": "8b23b47202252cf516fed49ea7109fd6d2127279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7da5bb55d802fda53287451c3febb2925bdd645d6e70fa2d53ef5058098842b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9360f828-dc2e-6889-3d73-7b7b25df85de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_reduction {q : ℚ} (hq : 0 < q) :
    let k := reductionExponent q
    let m := reduceMantissa q
    Real.log q = Real.log m + k * Real.log 2 := by
  intro k m  -- Introduce let-bound variables
  have hm_pos : (0 : ℝ) < m := by exact_mod_cast reduced_pos hq
  have h_recon := reconstruction_eq hq
  have hq_eq : (q : ℝ) = (m : ℝ) * (2 : ℝ) ^ k := by
    conv_lhs => rw [h_recon]
    push_cast
    rfl
  rw [hq_eq]
  have h2_pos : (0 : ℝ) < 2 ^ k := zpow_pos (by norm_num : (0 : ℝ) < 2) k
  rw [Real.log_mul (ne_of_gt hm_pos) (ne_of_gt h2_pos), Real.log_zpow]

/-- The transformation y = (m-1)/(m+1) maps m ∈ [1/2, 2] to y ∈ [-1/3, 1/3] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b23b47202252cf516fed49ea7109fd6d2127279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
