# id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fc3c02199fc0751115a99f768efd523d62f2c1d6216c5754b88e76db7fd7d10",
  "kind": "def",
  "lexical_name": "id",
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
  "slug": "id--a360b0b9f93cd90e8daf16ba",
  "source": {
    "blob": "2eeb1e1449bb1463e9d16e4ca7120d206885f7d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a360b0b9f93cd90e8daf16badbbc1d8cc2b0dd2a38f126bcff8143b86b2eb250",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fc3c02199fc0751115a99f768efd523d62f2c1d6216c5754b88e76db7fd7d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def id : Realizer α :=
  ⟨{ x : Set α // IsOpen x },
    { f := Subtype.val
      top := fun _ ↦ ⟨univ, isOpen_univ⟩
      top_mem := mem_univ
      inter := fun ⟨_x, h₁⟩ ⟨_y, h₂⟩ _a _h₃ ↦ ⟨_, h₁.inter h₂⟩
      inter_mem := fun ⟨_x, _h₁⟩ ⟨_y, _h₂⟩ _a ↦ id
      inter_sub := fun ⟨_x, _h₁⟩ ⟨_y, _h₂⟩ _a _h₃ ↦ Subset.refl _ },
    ext Subtype.property fun _x _s h ↦
      let ⟨t, h, o, m⟩ := mem_nhds_iff.1 h
      ⟨⟨t, o⟩, m, h⟩⟩

/-- Replace the representation type of a `Ctop` realizer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant602835abaaf867cd29638768384d250862be708c133c688d3aee7ddae6e57705.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eeb1e1449bb1463e9d16e4ca7120d206885f7d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
