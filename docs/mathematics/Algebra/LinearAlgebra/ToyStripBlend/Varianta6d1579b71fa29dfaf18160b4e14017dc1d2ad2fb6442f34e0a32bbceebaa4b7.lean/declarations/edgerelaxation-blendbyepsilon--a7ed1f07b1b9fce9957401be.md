# EdgeRelaxation.blendByEpsilon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c157bae323fe2580d6486065e220fb887e0bdd5cbe45f684ef1fca8d7155b4d6",
  "kind": "def",
  "lexical_name": "EdgeRelaxation.blendByEpsilon",
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
  "slug": "edgerelaxation-blendbyepsilon--a7ed1f07b1b9fce9957401be",
  "source": {
    "blob": "19656661a6f36a29215d14fe37a762de5f70d756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Varianta6d1579b71fa29dfaf18160b4e14017dc1d2ad2fb6442f34e0a32bbceebaa4b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7ed1f07b1b9fce9957401be5c02368f2e513d8a95bac5514a24a3e574563d7d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToyStripBlend/Varianta6d1579b71fa29dfaf18160b4e14017dc1d2ad2fb6442f34e0a32bbceebaa4b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c157bae323fe2580d6486065e220fb887e0bdd5cbe45f684ef1fca8d7155b4d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EdgeRelaxation.blendByEpsilon
    (u v : EdgeRelaxation.Vector Bool) :
    EdgeRelaxation.Vector EdgeRelaxation.EpsilonDensity :=
  fun p =>
    EdgeRelaxation.EpsilonDensity.add
      (EdgeRelaxation.EpsilonDensity.scaleBool
        (u p) EdgeRelaxation.EpsilonDensity.oneMinusEps)
      (EdgeRelaxation.EpsilonDensity.scaleBool
        (v p) EdgeRelaxation.EpsilonDensity.eps)

/-- The symbolic toy strip blend state: `(1 - ε) · pole + ε · shell`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToyStripBlend/Varianta6d1579b71fa29dfaf18160b4e14017dc1d2ad2fb6442f34e0a32bbceebaa4b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToyStripBlend/Varianta6d1579b71fa29dfaf18160b4e14017dc1d2ad2fb6442f34e0a32bbceebaa4b7.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19656661a6f36a29215d14fe37a762de5f70d756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
