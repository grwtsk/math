# rayleighQuotientBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0495c1e329a52c36ff9392c7f9c262e799d2b3261e28d004faa5b3eb07988b6",
  "kind": "def",
  "lexical_name": "rayleighQuotientBase",
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
  "slug": "rayleighquotientbase--d7311c9472e67dd061815fae",
  "source": {
    "blob": "fc7d155cbff28a8fbcac7bb89c7958c792bb0e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 50,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7311c9472e67dd061815faea81318e51f5a4c1dace5733c09affb800106b931",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0495c1e329a52c36ff9392c7f9c262e799d2b3261e28d004faa5b3eb07988b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rayleighQuotientBase (A : H →L[ℂ] H) (v : H) : ℝ :=
  RCLike.re (inner ℂ v (A v)) / ‖v‖ ^ 2

/-! The next two results make the exact relationship to mathlib executable. -/

/-- Unfold the manuscript definition without changing the order of the inner-product inputs. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variantd0b951857b9f7b1813da19a81e2fec7f656fd8ca6393f524694dfce0417186e0.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc7d155cbff28a8fbcac7bb89c7958c792bb0e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
