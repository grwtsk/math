# thetaStrongPair_source_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e559b35-4c0a-c9fd-f745-ee3c1132bb6b",
  "kind": "theorem",
  "lexical_name": "thetaStrongPair_source_split",
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
  "slug": "thetastrongpair-source-split--f3854902232880fe3d087123",
  "source": {
    "blob": "afb3613da94f205be3bceb1ba5e93bd6b480a88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3854902232880fe3d0871232fa7e66a4c519a896678716e4288a0d38527bcac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e559b35-4c0a-c9fd-f745-ee3c1132bb6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaStrongPair_source_split {x : ℝ} (hx : 0 < x) :
    thetaStrongPair.f x = thetaUpperSource x + thetaLowerSource x := by
  rcases lt_trichotomy x 1 with hlt | rfl | hgt
  · have hinv : 1 < 1 / x := by
      rwa [lt_one_div one_pos hx, div_one]
    rw [thetaUpperSource_of_le_one hlt.le, zero_add, thetaLowerSource,
      thetaUpperSource_of_one_lt hinv, thetaStrongPair_self_dual x hx]
    rw [← mul_assoc, cpow_neg_half_mul_rpow_half hx, one_mul]
  · simp [thetaStrongPair, thetaSourcePair, thetaUpperSource, thetaLowerSource,
      WeakFEPair.toStrongFEPair, WeakFEPair.f_modif]
  · have hinv : 1 / x < 1 := by
      rwa [one_div_lt (zero_lt_one.trans hgt) one_pos, div_one]
    rw [thetaUpperSource_of_one_lt hgt, thetaLowerSource,
      thetaUpperSource_of_le_one hinv.le, mul_zero, add_zero]

/-- The upper source has a convergent Mellin transform for every complex
parameter, inherited from the actual strong source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb3613da94f205be3bceb1ba5e93bd6b480a88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
