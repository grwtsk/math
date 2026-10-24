# limAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f244235f6e12764556c4d66651cb78a33b966503bc2a4ad7c482044b3ddbdfe3",
  "kind": "def",
  "lexical_name": "limAux",
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
  "slug": "limaux--2deab3297ece4e216cca1c00",
  "source": {
    "blob": "0e2b6317a777c4d168a9098fb17ad33323efd4c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 299,
    "path": "GRWTSK/Topology/MetricTopology/Norm/Variant7f719d7b3ba3ba8b4667a8f79e7efd5d8fb4da2b82dcca011e64129113a63eba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2deab3297ece4e216cca1c00d12ea8e2a923fa21a5ae50c1cbcde017c4e45c7e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Norm/Variant7f719d7b3ba3ba8b4667a8f79e7efd5d8fb4da2b82dcca011e64129113a63eba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f244235f6e12764556c4d66651cb78a33b966503bc2a4ad7c482044b3ddbdfe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def limAux (f : CauSeq ℂ (‖·‖)) : ℂ :=
  ⟨CauSeq.lim (cauSeqRe f), CauSeq.lim (cauSeqIm f)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Norm/Variant7f719d7b3ba3ba8b4667a8f79e7efd5d8fb4da2b82dcca011e64129113a63eba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Norm/Variant7f719d7b3ba3ba8b4667a8f79e7efd5d8fb4da2b82dcca011e64129113a63eba.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e2b6317a777c4d168a9098fb17ad33323efd4c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
