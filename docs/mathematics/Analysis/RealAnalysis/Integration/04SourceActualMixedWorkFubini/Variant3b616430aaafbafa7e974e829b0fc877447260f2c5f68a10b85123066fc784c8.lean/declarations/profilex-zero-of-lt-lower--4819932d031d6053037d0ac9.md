# profileX_zero_of_lt_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ed0c2b0-2466-1219-bd11-33392f876304",
  "kind": "theorem",
  "lexical_name": "profileX_zero_of_lt_lower",
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
  "slug": "profilex-zero-of-lt-lower--4819932d031d6053037d0ac9",
  "source": {
    "blob": "695e97c18ecfe370fb7aa4078ca1c329765a2c58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 704,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4819932d031d6053037d0ac98f85dca4b016b56805420e910bb9e926cf6272ae",
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

Occurrence: `result:2ed0c2b0-2466-1219-bd11-33392f876304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem profileX_zero_of_lt_lower
    (r : ℝ → ℝ) {A l b v : ℝ} (hlb : l ≤ b)
    (hs : tsupport r ⊆ Icc (-A) A) (hv : v < l - A) : profileX r l b v = 0 := by
  unfold profileX
  rw [intervalIntegral.integral_of_le hlb]
  apply integral_eq_zero_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
  have hz : r (v - t) = 0 := by
    by_contra hn
    have hi := hs (subset_tsupport r hn)
    linarith [ht.1, hi.1]
  simp only [hz, mul_zero, Pi.zero_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant3b616430aaafbafa7e974e829b0fc877447260f2c5f68a10b85123066fc784c8.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695e97c18ecfe370fb7aa4078ca1c329765a2c58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
