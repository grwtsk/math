# perpBisector_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3626ca98-e535-a2fd-9b8d-7155a264e57b",
  "kind": "theorem",
  "lexical_name": "perpBisector_self",
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
  "slug": "perpbisector-self--22bd3361ab7e7f103b1c2602",
  "source": {
    "blob": "a6a3ebd6a9ea4398b82de589334efb10347760e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 105,
    "path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22bd3361ab7e7f103b1c26028e7f58a98f08a9b482e3131de2fb86d5eefb7164",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3626ca98-e535-a2fd-9b8d-7155a264e57b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem perpBisector_self (p : P) : perpBisector p p = ⊤ :=
  top_unique fun _ ↦ by simp [mem_perpBisector_iff_inner_eq_inner]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PerpBisector/Variant91e1c8712a7fe30318878c8f397fba2fff55fcce36d32f092acba93d156cdf1b.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6a3ebd6a9ea4398b82de589334efb10347760e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
