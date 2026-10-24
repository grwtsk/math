# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a00eca00e72f409ad22b5344ec0cdb9297e2114939ecf4c54ebb4972eddc3497",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d686f2d5b88a6d3e42fd5e6d",
  "source": {
    "blob": "a442c92babe2bfda9a7f4136670cb78007750edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 287,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant3fe36a64cd9da30f04d68d016cbaeecc849b117df3d9231739cf90162c9af65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d686f2d5b88a6d3e42fd5e6df0fdad739bf941e88d0da7434a5942a1073ff70b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant3fe36a64cd9da30f04d68d016cbaeecc849b117df3d9231739cf90162c9af65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a00eca00e72f409ad22b5344ec0cdb9297e2114939ecf4c54ebb4972eddc3497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (s : ℝ) : InnerProductSpace ℂ H^{s}(E, F) where
  inner f g := inner ℂ f.toLp g.toLp
  norm_sq_eq_re_inner f := by exact norm_sq_eq_re_inner f.toLp
  conj_inner_symm f g := by simp
  add_left f g h := by simp [inner_add_left]
  smul_left f g c := by simp [inner_smul_left]

end InnerProductSpace

end BesselPotentialSpace

namespace TemperedDistribution

open scoped BesselPotentialSpace

variable [NormedSpace ℂ F]

variable {s : ℝ} {p : ℝ≥0∞} [hp : Fact (1 ≤ p)]

/-- Every unbundled Sobolev tempered distribution defines an element in `H^{s, p}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant3fe36a64cd9da30f04d68d016cbaeecc849b117df3d9231739cf90162c9af65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant3fe36a64cd9da30f04d68d016cbaeecc849b117df3d9231739cf90162c9af65f.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a442c92babe2bfda9a7f4136670cb78007750edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
