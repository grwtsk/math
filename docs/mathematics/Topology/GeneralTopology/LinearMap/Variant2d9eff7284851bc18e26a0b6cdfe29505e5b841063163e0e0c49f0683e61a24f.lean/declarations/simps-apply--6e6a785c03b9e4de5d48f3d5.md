# Simps.apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf6c19982e3d2207b8e13634b2a78d89fc9c01022c18505137ce97f9e1709e56",
  "kind": "def",
  "lexical_name": "Simps.apply",
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
  "slug": "simps-apply--6e6a785c03b9e4de5d48f3d5",
  "source": {
    "blob": "2e71c00c890995178465124f2912166de722d50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e6a785c03b9e4de5d48f3d53273c77d0ec5c0406c2d7e0d44bcec60addf5eb6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf6c19982e3d2207b8e13634b2a78d89fc9c01022c18505137ce97f9e1709e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Simps.apply (h : M₁ →SL[σ₁₂] M₂) : M₁ → M₂ :=
  h

/-- See Note [custom simps projection]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e71c00c890995178465124f2912166de722d50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
