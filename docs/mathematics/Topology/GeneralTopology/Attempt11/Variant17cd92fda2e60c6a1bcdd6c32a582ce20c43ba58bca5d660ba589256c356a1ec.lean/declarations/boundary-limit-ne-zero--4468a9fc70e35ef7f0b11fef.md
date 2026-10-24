# boundary_limit_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3909de8c-b625-3323-2818-b455feb1bbe3",
  "kind": "theorem",
  "lexical_name": "boundary_limit_ne_zero",
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
  "slug": "boundary-limit-ne-zero--4468a9fc70e35ef7f0b11fef",
  "source": {
    "blob": "8b97b6605f55e290edf4e32dde1cdfae781d0ad9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt11/Variant17cd92fda2e60c6a1bcdd6c32a582ce20c43ba58bca5d660ba589256c356a1ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4468a9fc70e35ef7f0b11fef5316e6556c92a74d341e9dfcf1f8d0ad539ff9bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt11/Variant17cd92fda2e60c6a1bcdd6c32a582ce20c43ba58bca5d660ba589256c356a1ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3909de8c-b625-3323-2818-b455feb1bbe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_limit_ne_zero (lambda : ℂ) (hl : -(1/2 : ℝ) < lambda.re)
    (hl0 : lambda ≠ 0) :
    -3938220*lambda^3*(lambda+1)^2/(lambda+1/2)^10 ≠ 0 := by
  have hp : lambda+1 ≠ 0 := by
    intro he
    have hh := congrArg Complex.re he
    simp only [Complex.add_re,Complex.one_re,Complex.zero_re] at hh
    linarith
  have hz : 0 < (lambda+(1/2 : ℂ)).re := by
    norm_num [Complex.add_re,Complex.div_re]
    linarith
  exact div_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) (pow_ne_zero _ hl0))
    (pow_ne_zero _ hp)) (pow_ne_zero _ (half_plane_ne_zero hz))

/-- Conditional coordinate evaluation; no existence of an offcritical zero is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt11/Variant17cd92fda2e60c6a1bcdd6c32a582ce20c43ba58bca5d660ba589256c356a1ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt11/Variant17cd92fda2e60c6a1bcdd6c32a582ce20c43ba58bca5d660ba589256c356a1ec.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b97b6605f55e290edf4e32dde1cdfae781d0ad9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
