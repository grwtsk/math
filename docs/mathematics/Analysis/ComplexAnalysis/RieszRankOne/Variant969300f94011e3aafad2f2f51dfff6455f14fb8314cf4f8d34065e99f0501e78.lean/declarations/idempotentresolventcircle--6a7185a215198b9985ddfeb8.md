# idempotentResolventCircle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15a32c5950036598a9a746311f9bad14e504f275c7cf263e91cf926427139dff",
  "kind": "def",
  "lexical_name": "idempotentResolventCircle",
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
  "slug": "idempotentresolventcircle--6a7185a215198b9985ddfeb8",
  "source": {
    "blob": "d1cd9ce90730a5df6a52c5d73e2c5368c8ca8e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 151,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a7185a215198b9985ddfeb8e48d9e0c127038bd83f37dffb9f28d238eaa1863",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15a32c5950036598a9a746311f9bad14e504f275c7cf263e91cf926427139dff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def idempotentResolventCircle
    (P : H →L[ℂ] H) (hP : IsIdempotentElem P) (r : ℝ)
    (hr : 0 < r) (hr1 : r < 1) : ResolventCircle P where
  center := 1
  radius := r
  radius_pos := hr
  contour_resolvent := by
    intro z hz
    exact idempotent_mem_resolventSet P z hP
      (mem_sphere_one_ne_zero hz hr1) (mem_sphere_one_ne_one hz hr)

/-! ## Evaluation of the contour integral -/

section Complete

variable [CompleteSpace H]

/-- The pole at `0` is outside `C(1,r)` when `r < 1`, so its integral vanishes. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszRankOne/Variant969300f94011e3aafad2f2f51dfff6455f14fb8314cf4f8d34065e99f0501e78.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1cd9ce90730a5df6a52c5d73e2c5368c8ca8e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
