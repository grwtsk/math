# gridPoint_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70277100-db6f-ca30-99d7-ca7d9e66c331",
  "kind": "theorem",
  "lexical_name": "gridPoint_gap",
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
  "slug": "gridpoint-gap--3ed1a4862d63d2a5d1ff3e44",
  "source": {
    "blob": "4a6389ec7a7d6fb4b501e59d9b885c15843cca6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/Analysis/Real/FiniteIntervalSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ed1a4862d63d2a5d1ff3e44b5a2804c52abd246d6bc41640c02fef56cfa80a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70277100-db6f-ca30-99d7-ca7d9e66c331`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gridPoint_gap (a : ℝ) (K : ℕ) (i j : Fin (K + 1)) (hij : i.val < j.val) :
    4 * clearance K ≤ gridPoint a K j - gridPoint a K i := by
  have hcast : (i.val : ℝ) + 1 ≤ (j.val : ℝ) := by
    exact_mod_cast (Nat.succ_le_iff.mpr hij)
  rw [gridPoint_sub]
  have heq : 4 * clearance K = 1 / ((K : ℝ) + 1) := by
    unfold clearance
    have hK : (K : ℝ) + 1 ≠ 0 := by positivity
    field_simp [hK]
  rw [heq]
  exact div_le_div_of_nonneg_right (by linarith) (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/FiniteIntervalSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/FiniteIntervalSeparation.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6389ec7a7d6fb4b501e59d9b885c15843cca6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
