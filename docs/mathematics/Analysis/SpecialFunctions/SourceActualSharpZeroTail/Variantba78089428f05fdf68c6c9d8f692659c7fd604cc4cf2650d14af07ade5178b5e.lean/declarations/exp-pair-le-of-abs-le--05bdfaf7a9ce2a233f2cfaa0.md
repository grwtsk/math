# exp_pair_le_of_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:247595e6-52e2-bb29-bff2-304c379002e6",
  "kind": "theorem",
  "lexical_name": "exp_pair_le_of_abs_le",
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
  "slug": "exp-pair-le-of-abs-le--05bdfaf7a9ce2a233f2cfaa0",
  "source": {
    "blob": "86a85697b4fa35e582343437570b6f2546635d2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 127,
    "path": "GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantba78089428f05fdf68c6c9d8f692659c7fd604cc4cf2650d14af07ade5178b5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05bdfaf7a9ce2a233f2cfaa06df2a5575e26801709a9770593137472721dfa25",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantba78089428f05fdf68c6c9d8f692659c7fd604cc4cf2650d14af07ade5178b5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:247595e6-52e2-bb29-bff2-304c379002e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_pair_le_of_abs_le {x y : ℝ} (hy : 0 ≤ y) (hxy : |x| ≤ y) :
    Real.exp x + Real.exp (-x) ≤ Real.exp y + Real.exp (-y) := by
  have habs : |x| ≤ |y| := by simpa only [abs_of_nonneg hy] using hxy
  have h := Real.cosh_le_cosh.mpr habs
  rw [Real.cosh_eq, Real.cosh_eq] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantba78089428f05fdf68c6c9d8f692659c7fd604cc4cf2650d14af07ade5178b5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/SourceActualSharpZeroTail/Variantba78089428f05fdf68c6c9d8f692659c7fd604cc4cf2650d14af07ade5178b5e.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86a85697b4fa35e582343437570b6f2546635d2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
