# Filter.EventuallyEq.codiscreteWithin_fderivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e2190a9-1478-ab4c-684d-becba7c40754",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.codiscreteWithin_fderivWithin",
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
  "slug": "filter-eventuallyeq-codiscretewithin-fderivwithin--b22ff0426a3d2684379b388f",
  "source": {
    "blob": "c35dcc20d5d0c4e7b5e4ceb760990a1f886619b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 288,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variantea510927375a3905c4eefcecd5407dc570046064fafa26d722fd7fd5ae265e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b22ff0426a3d2684379b388f1d9dc0a66da2942e11ccf164cce5c292add8ae4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variantea510927375a3905c4eefcecd5407dc570046064fafa26d722fd7fd5ae265e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e2190a9-1478-ab4c-684d-becba7c40754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEq.codiscreteWithin_fderivWithin
    (h : f₁ =ᶠ[codiscreteWithin s] f) :
    fderivWithin 𝕜 f₁ s =ᶠ[codiscreteWithin s] fderivWithin 𝕜 f s :=
  h.codiscreteWithin_fderivWithin' Subset.rfl

/-- If two functions agree on a codiscrete subset of an open set `s`, then so do their
derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variantea510927375a3905c4eefcecd5407dc570046064fafa26d722fd7fd5ae265e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variantea510927375a3905c4eefcecd5407dc570046064fafa26d722fd7fd5ae265e89.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c35dcc20d5d0c4e7b5e4ceb760990a1f886619b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
