# CFC.spectrum_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:172533d5-19b0-35e4-4d19-9f95a74ef207",
  "kind": "lemma",
  "lexical_name": "CFC.spectrum_nonempty",
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
  "slug": "cfc-spectrum-nonempty--e3619c13a507bf6754e2c5cd",
  "source": {
    "blob": "80944cc700ffac05f1890454cca4432c1bc98d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 748,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3619c13a507bf6754e2c5cdd7eae3f437cfa46f315a7db18ae3df581f7850ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:172533d5-19b0-35e4-4d19-9f95a74ef207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 748–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CFC.spectrum_nonempty [Nontrivial A] (a : A) (ha : p a := by cfc_tac) :
    (spectrum R a).Nonempty := ContinuousFunctionalCalculus.spectrum_nonempty a ha

end CFC

end Basic

section Inv

variable {R A : Type*} {p : A → Prop} [Semifield R] [StarRing R] [MetricSpace R]
variable [IsTopologicalSemiring R] [ContinuousStar R] [TopologicalSpace A]
variable [Ring A] [StarRing A] [Algebra R A] [ContinuousFunctionalCalculus R A p]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean#L748).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80944cc700ffac05f1890454cca4432c1bc98d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
