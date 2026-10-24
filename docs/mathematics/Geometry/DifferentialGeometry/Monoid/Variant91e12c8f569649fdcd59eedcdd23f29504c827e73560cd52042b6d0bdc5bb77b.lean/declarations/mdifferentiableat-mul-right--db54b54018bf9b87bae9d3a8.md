# mdifferentiableAt_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a57a32c-5dca-e878-e96e-122cf8635d44",
  "kind": "theorem",
  "lexical_name": "mdifferentiableAt_mul_right",
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
  "slug": "mdifferentiableat-mul-right--db54b54018bf9b87bae9d3a8",
  "source": {
    "blob": "213cc287878b1c187e497b34f5b2e951c1d848c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 203,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db54b54018bf9b87bae9d3a819fe4c24c560c518e98ffd2cb89840c3dfc0da97",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a57a32c-5dca-e878-e96e-122cf8635d44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mdifferentiableAt_mul_right {a b : G} :
    MDifferentiableAt I I (· * a) b :=
  contMDiffAt_mul_right.mdifferentiableAt le_rfl

end

variable (I) (g h : G)
variable [ContMDiffMul I ∞ G]

/-- Left multiplication by `g`. It is meant to mimic the usual notation in Lie groups.
Used mostly through the notation `𝑳`.
Lemmas involving `smoothLeftMul` with the notation `𝑳` usually use `L` instead of `𝑳` in the
names. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant91e12c8f569649fdcd59eedcdd23f29504c827e73560cd52042b6d0bdc5bb77b.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `213cc287878b1c187e497b34f5b2e951c1d848c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
