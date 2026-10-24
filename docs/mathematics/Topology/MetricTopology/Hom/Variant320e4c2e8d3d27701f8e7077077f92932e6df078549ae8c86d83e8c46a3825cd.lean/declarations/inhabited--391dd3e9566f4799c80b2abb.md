# inhabited

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:770e5a08ff1dc293e7b52a0fdc0ab11d352c2ec94a436ebfe0cdf288ad3f2aba",
  "kind": "instance",
  "lexical_name": "inhabited",
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
  "slug": "inhabited--391dd3e9566f4799c80b2abb",
  "source": {
    "blob": "810acdb8ec91e06f7f0ba0f7556ff9a9655e249b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 314,
    "path": "GRWTSK/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:391dd3e9566f4799c80b2abb000ba694622c61fc0ccd7931bd37268c464ae1b0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:770e5a08ff1dc293e7b52a0fdc0ab11d352c2ec94a436ebfe0cdf288ad3f2aba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance inhabited : Inhabited (NormedAddGroupHom V₁ V₂) :=
  ⟨0⟩

/-- The norm of the `0` operator is `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hom/Variant320e4c2e8d3d27701f8e7077077f92932e6df078549ae8c86d83e8c46a3825cd.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810acdb8ec91e06f7f0ba0f7556ff9a9655e249b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
