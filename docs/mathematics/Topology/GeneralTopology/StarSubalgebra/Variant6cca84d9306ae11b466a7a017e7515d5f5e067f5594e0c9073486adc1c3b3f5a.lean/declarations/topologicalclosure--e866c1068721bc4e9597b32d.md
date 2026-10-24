# topologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f3b16781605ec1de17745911fb7885df7ef4588a454a30f14450cdb2a0f1d79",
  "kind": "def",
  "lexical_name": "topologicalClosure",
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
  "slug": "topologicalclosure--e866c1068721bc4e9597b32d",
  "source": {
    "blob": "3ebd3d261458b22283aca6c28f3d81a6a3ecac77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e866c1068721bc4e9597b32d56e2e770bd20ac36cf7b7ea343579dd4b1eacb77",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f3b16781605ec1de17745911fb7885df7ef4588a454a30f14450cdb2a0f1d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topologicalClosure (s : StarSubalgebra R A) : StarSubalgebra R A :=
  {
    s.toSubalgebra.topologicalClosure with
    carrier := closure (s : Set A)
    star_mem' := fun ha =>
      map_mem_closure continuous_star ha fun x => (star_mem : x ∈ s → star x ∈ s) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant6cca84d9306ae11b466a7a017e7515d5f5e067f5594e0c9073486adc1c3b3f5a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ebd3d261458b22283aca6c28f3d81a6a3ecac77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
