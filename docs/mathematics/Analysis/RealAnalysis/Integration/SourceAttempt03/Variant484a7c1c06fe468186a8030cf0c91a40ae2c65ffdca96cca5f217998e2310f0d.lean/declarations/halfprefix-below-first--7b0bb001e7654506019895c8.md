# halfPrefix_below_first

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8c03f3f-99de-e3c2-5a06-067db514184c",
  "kind": "theorem",
  "lexical_name": "halfPrefix_below_first",
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
  "slug": "halfprefix-below-first--7b0bb001e7654506019895c8",
  "source": {
    "blob": "7844854a3d8d20d487bbf582cc779df9890739ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant484a7c1c06fe468186a8030cf0c91a40ae2c65ffdca96cca5f217998e2310f0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b0bb001e7654506019895c8933ebd89703da2d92a9fb12521f302fd95132fa4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant484a7c1c06fe468186a8030cf0c91a40ae2c65ffdca96cca5f217998e2310f0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8c03f3f-99de-e3c2-5a06-067db514184c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfPrefix_below_first {t : ℝ} (ht : t < Real.log 2) : halfPrefix t = 0 := by
  have hsum := logSum_eq_halfPrefix t
  unfold mangoldtLogSum at hsum
  have hnone : primePowerInventory t = ∅ := by
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro n hn
    have hb := mangoldtInventory_log_bounds t n hn
    have hn2 : (2 : ℝ) ≤ n := by exact_mod_cast (Finset.mem_Icc.mp hn).1
    have hlogn := Real.log_le_log (by norm_num : (0 : ℝ) < 2) hn2
    linarith
  rw [hnone, Finset.sum_empty] at hsum
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant484a7c1c06fe468186a8030cf0c91a40ae2c65ffdca96cca5f217998e2310f0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variant484a7c1c06fe468186a8030cf0c91a40ae2c65ffdca96cca5f217998e2310f0d.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7844854a3d8d20d487bbf582cc779df9890739ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
