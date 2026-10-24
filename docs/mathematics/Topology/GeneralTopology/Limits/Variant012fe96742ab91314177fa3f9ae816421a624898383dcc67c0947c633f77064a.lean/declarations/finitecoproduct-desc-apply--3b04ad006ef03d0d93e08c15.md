# finiteCoproduct.ι_desc_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:181898a3-06e2-0de9-d76c-9e39e1da64d3",
  "kind": "lemma",
  "lexical_name": "finiteCoproduct.ι_desc_apply",
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
  "slug": "finitecoproduct-desc-apply--3b04ad006ef03d0d93e08c15",
  "source": {
    "blob": "050b3d42007f1bdeb141b39a511b31a13f48ec45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b04ad006ef03d0d93e08c15f7a86238e662e36158d47a94687eb692336bdda2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:181898a3-06e2-0de9-d76c-9e39e1da64d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finiteCoproduct.ι_desc_apply {B : CompHausLike P} {π : (a : α) → X a ⟶ B} (a : α) :
    ∀ x, finiteCoproduct.desc X π (finiteCoproduct.ι X a x) = π a x := by
  intro x
  change (ι X a ≫ desc X π) _ = _
  simp only [ι_desc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant012fe96742ab91314177fa3f9ae816421a624898383dcc67c0947c633f77064a.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `050b3d42007f1bdeb141b39a511b31a13f48ec45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
