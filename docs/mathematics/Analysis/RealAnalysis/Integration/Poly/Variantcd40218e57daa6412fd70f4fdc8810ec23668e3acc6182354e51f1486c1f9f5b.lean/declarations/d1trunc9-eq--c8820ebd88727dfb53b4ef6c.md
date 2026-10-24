# D1trunc9_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b330ca8-1fd1-8ce6-8b89-e7ddb0b0f8b0",
  "kind": "theorem",
  "lexical_name": "D1trunc9_eq",
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
  "slug": "d1trunc9-eq--c8820ebd88727dfb53b4ef6c",
  "source": {
    "blob": "4418bac9261f9e0ff74e34d311929d715b9c749a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8820ebd88727dfb53b4ef6c115e4de0c2f334f277b0d1936c531a7e29fcc82c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b330ca8-1fd1-8ce6-8b89-e7ddb0b0f8b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem D1trunc9_eq (r : ℝ) : D1trunc 9 r = T9 r := by
  simp only [D1trunc, D1coeff, T9, Finset.sum_range_succ, Finset.sum_range_zero, Nat.factorial,
    Nat.cast_ofNat, Nat.cast_mul, Nat.cast_succ]
  norm_num
  ring

/-! ### the flat window -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4418bac9261f9e0ff74e34d311929d715b9c749a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
