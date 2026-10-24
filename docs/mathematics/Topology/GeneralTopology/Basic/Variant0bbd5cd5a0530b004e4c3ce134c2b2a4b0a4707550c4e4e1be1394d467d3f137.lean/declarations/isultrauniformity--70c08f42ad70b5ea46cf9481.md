# IsUltraUniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc02842b2c3cc61cab92e2c079a5b45289e6c62b0bdf8041b2a587654388c03e",
  "kind": "class",
  "lexical_name": "IsUltraUniformity",
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
  "slug": "isultrauniformity--70c08f42ad70b5ea46cf9481",
  "source": {
    "blob": "18085128a6e959dca990870bd6a3ca410c0a49b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70c08f42ad70b5ea46cf9481ee2b55e6688b87f273f2d85da1bbad2fbe201726",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc02842b2c3cc61cab92e2c079a5b45289e6c62b0bdf8041b2a587654388c03e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsUltraUniformity : Prop where
  hasBasis : (𝓤 X).HasBasis
    (fun s : Set (X × X) => s ∈ 𝓤 X ∧ IsSymmetricRel s ∧ IsTransitiveRel s) id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0bbd5cd5a0530b004e4c3ce134c2b2a4b0a4707550c4e4e1be1394d467d3f137.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18085128a6e959dca990870bd6a3ca410c0a49b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
