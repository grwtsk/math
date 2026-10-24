# μ₊

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abd0b29589fc2934ef53002dc840fc1260178290a131d3d20fba86b90064d625",
  "kind": "abbrev",
  "lexical_name": "μ₊",
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
  "slug": "anonymous--f14a169c9f0298b4e6f3de1b",
  "source": {
    "blob": "6ef8fef67454e6e62565900c8f74ecfc04d2a72d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f14a169c9f0298b4e6f3de1baab0d66681769e471a1d41ed616c32d9e076655d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abd0b29589fc2934ef53002dc840fc1260178290a131d3d20fba86b90064d625`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev μ₊ : Measure ℝ≥0 := (volume : Measure ℝ).restrict (Set.Ici 0)

/-- Real `L²` on the half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HalfLine/Variant74ce3e9180a1959db3dd6ef05dd85461e8365ac57c1edd2c2238f8d31657ada6.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ef8fef67454e6e62565900c8f74ecfc04d2a72d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
