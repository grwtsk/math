# _root_.GRWTSK.Topology.GeneralTopology.IsEmbeddingInclusion.Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.Subalgebra.topologicalClosure_star_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1127fb25-2376-2491-de65-918c46f69651",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsEmbeddingInclusion.Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.Subalgebra.topologicalClosure_star_comm",
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
  "slug": "root-grwtsk-topology-generaltopology-isembeddinginclusion-varianta993bb3--3bc58c39470bcf508eb776cc",
  "source": {
    "blob": "3eef3222ec34dea3ee0b0a0364ebb9196d46c20b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bc58c39470bcf508eb776ccf5579774267feb254361b6700ff77ea3891d298d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1127fb25-2376-2491-de65-918c46f69651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsEmbeddingInclusion.Varianta993bb37ff1f645c3ce77532031fd9b83a2968afe9c6350ef73da707d14cd4d0.Subalgebra.topologicalClosure_star_comm (s : Subalgebra R A) :
    (star s).topologicalClosure = star s.topologicalClosure := by
  suffices ∀ t : Subalgebra R A, (star t).topologicalClosure ≤ star t.topologicalClosure from
    le_antisymm (this s) (by simpa only [star_star] using Subalgebra.star_mono (this (star s)))
  exact fun t => (star t).topologicalClosure_minimal (Subalgebra.star_mono subset_closure)
    (isClosed_closure.preimage continuous_star)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarSubalgebra/Variant7eb687a5d9741b3dd19d49c790e0721449bdcf156faa3fb57e04effd0a321b9e.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eef3222ec34dea3ee0b0a0364ebb9196d46c20b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
