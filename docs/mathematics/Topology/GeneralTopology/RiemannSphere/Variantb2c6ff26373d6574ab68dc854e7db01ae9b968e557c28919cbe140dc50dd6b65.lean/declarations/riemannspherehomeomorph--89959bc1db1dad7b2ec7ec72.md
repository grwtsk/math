# riemannSphereHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:640b54233a22f10fb4bf22e046bda3b2c5a1690ca38b5fd10dfe728404337bce",
  "kind": "def",
  "lexical_name": "riemannSphereHomeomorph",
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
  "slug": "riemannspherehomeomorph--89959bc1db1dad7b2ec7ec72",
  "source": {
    "blob": "583606b8698fbd1d87bbdf97ead5c08a98845262",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89959bc1db1dad7b2ec7ec72df1be615de3e729d95a2be7e3c437601ed915118",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:640b54233a22f10fb4bf22e046bda3b2c5a1690ca38b5fd10dfe728404337bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def riemannSphereHomeomorph : RiemannSphere ≃ₜ AxisSphere :=
  complexEquatorHomeomorph.onePointCongr.trans
    (onePointHyperplaneHomeoUnitSphere norm_north)

@[surface_novel, surface_published, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RiemannSphere/Variantb2c6ff26373d6574ab68dc854e7db01ae9b968e557c28919cbe140dc50dd6b65.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583606b8698fbd1d87bbdf97ead5c08a98845262` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
