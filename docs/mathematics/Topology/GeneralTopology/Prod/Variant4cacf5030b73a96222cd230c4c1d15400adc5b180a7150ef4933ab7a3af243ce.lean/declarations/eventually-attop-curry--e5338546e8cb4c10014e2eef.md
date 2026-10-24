# eventually_atTop_curry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0cefde7-2cec-3bc9-424d-087a74145e82",
  "kind": "theorem",
  "lexical_name": "eventually_atTop_curry",
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
  "slug": "eventually-attop-curry--e5338546e8cb4c10014e2eef",
  "source": {
    "blob": "30b322c48855245e5abb8604e6a95cab9c178c9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5338546e8cb4c10014e2eef1f053887506b1aa4fce138f7bfad358756faae64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0cefde7-2cec-3bc9-424d-087a74145e82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_atTop_curry [Preorder α] [Preorder β] {p : α × β → Prop}
    (hp : ∀ᶠ x : α × β in Filter.atTop, p x) : ∀ᶠ k in atTop, ∀ᶠ l in atTop, p (k, l) := by
  rw [← prod_atTop_atTop_eq] at hp
  exact hp.curry

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant4cacf5030b73a96222cd230c4c1d15400adc5b180a7150ef4933ab7a3af243ce.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b322c48855245e5abb8604e6a95cab9c178c9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
