# blockMargin_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25e9473d-823a-3f24-072d-a442d63c69c0",
  "kind": "theorem",
  "lexical_name": "blockMargin_pos",
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
  "slug": "blockmargin-pos--c1748bf4f2088348e5cb027a",
  "source": {
    "blob": "664d6643db220784c2d22a96bb55a2cf0edf72d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant321d26604bfd0a77bcca95fdd114520aa87816a498a052e32beb0bf4952a5006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1748bf4f2088348e5cb027ad753abd837a33831f843ee859cfb4fe64cbdc306",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant321d26604bfd0a77bcca95fdd114520aa87816a498a052e32beb0bf4952a5006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25e9473d-823a-3f24-072d-a442d63c69c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockMargin_pos : 0 < blockMargin := by
  have hs : Real.sqrt (13 / 2 : ℝ) < Real.sqrt 7 :=
    Real.sqrt_lt_sqrt (by norm_num) (by norm_num)
  have hsp : 0 < Real.sqrt (13 / 2 : ℝ) := Real.sqrt_pos.2 (by norm_num)
  have hi := one_div_lt_one_div_of_lt hsp hs
  rw [reciprocal_sqrt_six_half] at hi
  unfold blockMargin
  positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant321d26604bfd0a77bcca95fdd114520aa87816a498a052e32beb0bf4952a5006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant321d26604bfd0a77bcca95fdd114520aa87816a498a052e32beb0bf4952a5006.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `664d6643db220784c2d22a96bb55a2cf0edf72d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
