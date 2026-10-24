# topologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2907e23e6ad08265c6bcf5ff661773b9091e4ec92bec5b32cc8f7c80a64ef6c4",
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
  "slug": "topologicalclosure--f8cd45729f1e7f5271b9b6d0",
  "source": {
    "blob": "18b70958a493a27b1a986e1a6120edc1f21c6484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8cd45729f1e7f5271b9b6d0fd59fca831de968221db9d432d8eeb56f119bc6f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2907e23e6ad08265c6bcf5ff661773b9091e4ec92bec5b32cc8f7c80a64ef6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topologicalClosure (s : StarSubalgebra R A) : StarSubalgebra R A :=
  {
    s.toSubalgebra.topologicalClosure with
    carrier := closure (s : Set A)
    star_mem' := fun ha =>
      map_mem_closure continuous_star ha fun x => (star_mem : x ∈ s → star x ∈ s) }
#align star_subalgebra.topological_closure StarSubalgebra.topologicalClosure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Varianta3518dab0eef035bbfbc476b31a72f58d015ee392e7cb87f79e2262bbd874bad.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18b70958a493a27b1a986e1a6120edc1f21c6484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
