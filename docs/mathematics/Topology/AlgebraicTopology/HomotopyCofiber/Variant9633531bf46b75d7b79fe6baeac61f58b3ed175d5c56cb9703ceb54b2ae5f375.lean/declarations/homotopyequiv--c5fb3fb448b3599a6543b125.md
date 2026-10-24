# homotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:460cc15c5013c8f93929e0cf9ac4faea6a2bdae2f47aa721e7f32f64b582bacf",
  "kind": "def",
  "lexical_name": "homotopyEquiv",
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
  "slug": "homotopyequiv--c5fb3fb448b3599a6543b125",
  "source": {
    "blob": "c09675a4982fcb4365bd9b0114b0bcf328126d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 524,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5fb3fb448b3599a6543b1254aeb310ea110e8e687eb29ba51e4b62028661e34",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:460cc15c5013c8f93929e0cf9ac4faea6a2bdae2f47aa721e7f32f64b582bacf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homotopyEquiv : HomotopyEquiv K.cylinder K where
  hom := π K
  inv := ι₀ K
  homotopyHomInvId := πCompι₀Homotopy K hc
  homotopyInvHomId := Homotopy.ofEq (by simp)

/-- The homotopy between `cylinder.ι₀ K` and `cylinder.ι₁ K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09675a4982fcb4365bd9b0114b0bcf328126d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
