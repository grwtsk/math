# gridPoint_step_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cde6e716-6de0-18ca-c124-8f2f868c580b",
  "kind": "theorem",
  "lexical_name": "gridPoint_step_pos",
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
  "slug": "gridpoint-step-pos--f2c6d9f46b22562366fa2883",
  "source": {
    "blob": "7a393216359f6a48a73a1c8fd9e0f1baf1244e99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2c6d9f46b22562366fa2883894b6e3a1d24cdb18f524bcb699f00e0786b618b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cde6e716-6de0-18ca-c124-8f2f868c580b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gridPoint_step_pos {A : ℝ} {n k : ℕ} (hA : 0<A) (hn : 0<n) :
    gridPoint A n k<gridPoint A n (k+1) := by
  have hnr : (0:ℝ)<n := by exact_mod_cast hn
  have hh : (0:ℝ)<2*A/(n:ℝ) := by positivity
  dsimp [gridPoint]
  rw [Nat.cast_add,Nat.cast_one]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadout/Variantef6b99e1988cb9c167ac5ab167111ec8e3ccfb694ea882cf8de06d0f693f2be8.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a393216359f6a48a73a1c8fd9e0f1baf1244e99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
