# sourceSquareStorage_eq_one_above_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83600230-3d3a-1bb8-19f0-617e1364f559",
  "kind": "theorem",
  "lexical_name": "sourceSquareStorage_eq_one_above_cutoff",
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
  "slug": "sourcesquarestorage-eq-one-above-cutoff--e7776fdb2fb611329a4a02e5",
  "source": {
    "blob": "3fb9c23bacc7847cdd6c78578151562b183d3441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Source/Variant43c0a46902ee2a95b6ea4b711dad1d880014185020aa9acf34de3bba3e425ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7776fdb2fb611329a4a02e5e40a8c64c5586b7bb603594f12b3717661bb6220",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Source/Variant43c0a46902ee2a95b6ea4b711dad1d880014185020aa9acf34de3bba3e425ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83600230-3d3a-1bb8-19f0-617e1364f559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSquareStorage_eq_one_above_cutoff {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 2 ≤ n) (hN : ⌊Real.exp (2 * A)⌋₊ < n) :
    sourceSquareStorage A (Real.log n) = 1 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have he : Real.exp (2 * A) < (n : ℝ) := by
    by_contra hh
    have hf := (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 (le_of_not_gt hh)
    omega
  exact sourceSquareStorage_eq_one_of_support hA
    (((Real.lt_log_iff_exp_lt hn0).2 he).le.trans (le_abs_self _))

/-- Independent finite inventory enlargement must add to both accounts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Source/Variant43c0a46902ee2a95b6ea4b711dad1d880014185020aa9acf34de3bba3e425ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/StorageV3Source/Variant43c0a46902ee2a95b6ea4b711dad1d880014185020aa9acf34de3bba3e425ddd.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb9c23bacc7847cdd6c78578151562b183d3441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
