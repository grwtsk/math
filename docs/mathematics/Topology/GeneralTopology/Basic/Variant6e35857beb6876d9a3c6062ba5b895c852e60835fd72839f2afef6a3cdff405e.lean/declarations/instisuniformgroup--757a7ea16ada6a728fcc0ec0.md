# instIsUniformGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d7f4598e1567aa040ff2c2ccf8fcda492d0df0fb7e041c2aa1839adb32b0658",
  "kind": "instance",
  "lexical_name": "instIsUniformGroup",
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
  "slug": "instisuniformgroup--757a7ea16ada6a728fcc0ec0",
  "source": {
    "blob": "a417d840b1b428a363b894bc6e68ec36c75e78fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:757a7ea16ada6a728fcc0ec044b1b0ff72a0889c8d4a11bb453ffa16e8d1fdcc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d7f4598e1567aa040ff2c2ccf8fcda492d0df0fb7e041c2aa1839adb32b0658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsUniformGroup {G : Type*} [Group G] [UniformSpace G] [IsUniformGroup G] :
    IsUniformGroup (SeparationQuotient G) where
  uniformContinuous_div := by
    rw [uniformContinuous_dom₂]
    exact uniformContinuous_mk.comp uniformContinuous_div

@[deprecated (since := "2025-03-31")] alias
  instUniformAddGroup := SeparationQuotient.instIsUniformAddGroup
@[to_additive existing, deprecated (since := "2025-03-31")] alias
  instUniformGroup := SeparationQuotient.instIsUniformGroup

end IsUniformGroup

section MonoidWithZero

variable {M₀ : Type*} [TopologicalSpace M₀]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a417d840b1b428a363b894bc6e68ec36c75e78fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
