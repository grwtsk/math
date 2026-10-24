# strongAsymptoticBoundarySetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3692c005cb6882e0de633ee3b6e92b69bc6a25064ddf23f427df87b9c1b5dba9",
  "kind": "def",
  "lexical_name": "strongAsymptoticBoundarySetoid",
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
  "slug": "strongasymptoticboundarysetoid--0de61049179d2c279c56a06b",
  "source": {
    "blob": "367c4c8bd9cc38ae36a67b6e0e86fffb54173edb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/AsymptoticBoundary/Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0de61049179d2c279c56a06bb5e5db26679828e5abc6d0c1658b71409973b6b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AsymptoticBoundary/Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3692c005cb6882e0de633ee3b6e92b69bc6a25064ddf23f427df87b9c1b5dba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def strongAsymptoticBoundarySetoid
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) :
    Setoid (CertifiedBasinState certificate) where
  r := StronglyAsymptoticallyEquivalent
  iseqv := ⟨
    fun state =>
      all_basin_states_strongly_equivalent state state,
    fun {left right} _ =>
      all_basin_states_strongly_equivalent right left,
    fun {left _ right} _ _ =>
      all_basin_states_strongly_equivalent left right⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AsymptoticBoundary/Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AsymptoticBoundary/Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `367c4c8bd9cc38ae36a67b6e0e86fffb54173edb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
