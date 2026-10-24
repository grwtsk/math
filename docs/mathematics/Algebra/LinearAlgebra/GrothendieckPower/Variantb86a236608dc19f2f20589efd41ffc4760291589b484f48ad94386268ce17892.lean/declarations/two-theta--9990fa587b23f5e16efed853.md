# two_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d33afccb-80c1-119e-833e-0f542c6a528b",
  "kind": "theorem",
  "lexical_name": "two_theta",
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
  "slug": "two-theta--9990fa587b23f5e16efed853",
  "source": {
    "blob": "9c52a1085984477c11991a40854fffc0e35111ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 684,
    "path": "GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9990fa587b23f5e16efed853a43cf9f699fba3191bb9bf67cd5d064d2d1da562",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d33afccb-80c1-119e-833e-0f542c6a528b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_theta : 2 * theta = 2 * bA * V := by
  obtain ⟨ha, hb, hab, hv, hu⟩ := mapped_relations (AlgHom.id R A)
  exact (theta_identities_generic ha hb hab hv hu).2

open WithConv

/-- The universal point, in the convolution monoid of `R`-algebra endomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GrothendieckPower/Variantb86a236608dc19f2f20589efd41ffc4760291589b484f48ad94386268ce17892.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c52a1085984477c11991a40854fffc0e35111ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
