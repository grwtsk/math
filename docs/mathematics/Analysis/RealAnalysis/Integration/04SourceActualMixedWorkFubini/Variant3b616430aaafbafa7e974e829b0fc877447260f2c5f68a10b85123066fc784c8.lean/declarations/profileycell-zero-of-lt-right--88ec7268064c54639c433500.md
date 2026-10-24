# profileYCell_zero_of_lt_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6aca5f94-4fef-3873-8fb7-1f43eb262b3d",
  "kind": "theorem",
  "lexical_name": "profileYCell_zero_of_lt_right",
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
  "slug": "profileycell-zero-of-lt-right--88ec7268064c54639c433500",
  "source": {
    "blob": "695e97c18ecfe370fb7aa4078ca1c329765a2c58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 717,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88ec7268064c54639c4335006c1e829ea52d0c851e02dbf59f13169498fe8b42",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aca5f94-4fef-3873-8fb7-1f43eb262b3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 717–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem profileYCell_zero_of_lt_right
    (r : ℝ → ℝ) {A L k v : ℝ} (hL : 0 < L) (hLk : L ≤ k)
    (hs : tsupport r ⊆ Icc (-A) A) (hv : A - Real.log L < v) :
    profileYCell r k v = 0 := by
  unfold profileYCell
  rw [intervalIntegral.integral_of_le (by linarith : k ≤ k + 1)]
  apply integral_eq_zero_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with u hu
  have hlog : Real.log L ≤ Real.log u := Real.log_le_log hL (hLk.trans hu.1.le)
  have hz : r (v + Real.log u) = 0 := by
    by_contra hn
    have hi := hs (subset_tsupport r hn)
    linarith [hi.2]
  simp only [hz, zero_div, Pi.zero_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean#L717).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695e97c18ecfe370fb7aa4078ca1c329765a2c58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
