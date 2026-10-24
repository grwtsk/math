# actualLeadingComplexAntiderivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7461fb5cb095e53916e1735c83b5858803b73c7e519825ecd874b626b7da96a2",
  "kind": "def",
  "lexical_name": "actualLeadingComplexAntiderivative",
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
  "slug": "actualleadingcomplexantiderivative--a9fa31c4883e16048b29aaa2",
  "source": {
    "blob": "4da23fb72beb7342bbcc60f38a14fdd58846f7bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 21,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant652f0a0f7c26d83a117b2b8ecefce588fd25679aeba67ab588457a64f92669a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9fa31c4883e16048b29aaa25cc04d162a5fa9d5ac83086c50f864242a6018e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant652f0a0f7c26d83a117b2b8ecefce588fd25679aeba67ab588457a64f92669a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7461fb5cb095e53916e1735c83b5858803b73c7e519825ecd874b626b7da96a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualLeadingComplexAntiderivative (z : ℂ) (u : ℝ) : ℂ :=
  Complex.exp (-z * (u : ℂ)) *
    (-192 * ((u : ℂ)^2 / z + 2 * (u : ℂ) / z^2 + 2 / z^3) +
      4 * ((u : ℂ)^4 / z + 4 * (u : ℂ)^3 / z^2 + 12 * (u : ℂ)^2 / z^3 +
        24 * (u : ℂ) / z^4 + 24 / z^5))

/-- Every genuine polynomial-exponential term vanishes in this half plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant652f0a0f7c26d83a117b2b8ecefce588fd25679aeba67ab588457a64f92669a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualComplexEndpointCoefficient/Variant652f0a0f7c26d83a117b2b8ecefce588fd25679aeba67ab588457a64f92669a7.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4da23fb72beb7342bbcc60f38a14fdd58846f7bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
