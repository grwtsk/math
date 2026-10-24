# two_integral_convQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98ba7bff-deea-b438-5e32-506984a4a861",
  "kind": "theorem",
  "lexical_name": "two_integral_convQ",
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
  "slug": "two-integral-convq--82e7e7c643125dd182ac8d84",
  "source": {
    "blob": "0ec3f4c6c54767cc5946c83adec9c0548e0f9875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AtOne/Variant0368958ce985052953ac08831ee678a58ea13cd9ecb79bbb9f84c2a208ecac2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e7e7c643125dd182ac8d840b0f470395069579c492bf7102d2f82eeb2ad6d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AtOne/Variant0368958ce985052953ac08831ee678a58ea13cd9ecb79bbb9f84c2a208ecac2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98ba7bff-deea-b438-5e32-506984a4a861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_integral_convQ : 2 * ∫ r in (0:ℝ)..1, convQ r = (2777 / 3000 : ℝ) ^ 2 := by
  have h : (fun r : ℝ => convQ r)
      = polyEval [518783/600000, -729/1600, -522523/262500, 7082/1875, -47209/12500, 30551/18750,
          0, -68/3125, 0, -578/21875] := by
    ext r; simp [convQ, polyEval, Finset.sum_range_succ]; ring
  rw [h, integral_polyEval]; simp [polyInt, Finset.sum_range_succ]; norm_num

/-! ### the sandwich for the two windows -/

/-- the flat κ₉. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AtOne/Variant0368958ce985052953ac08831ee678a58ea13cd9ecb79bbb9f84c2a208ecac2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AtOne/Variant0368958ce985052953ac08831ee678a58ea13cd9ecb79bbb9f84c2a208ecac2f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec3f4c6c54767cc5946c83adec9c0548e0f9875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
