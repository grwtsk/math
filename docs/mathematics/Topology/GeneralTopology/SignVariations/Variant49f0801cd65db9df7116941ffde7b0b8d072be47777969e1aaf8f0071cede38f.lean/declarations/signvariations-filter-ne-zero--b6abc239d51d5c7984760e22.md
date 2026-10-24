# signVariations_filter_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77e4d1ae-c1c5-c241-74e5-bc48a3e70216",
  "kind": "lemma",
  "lexical_name": "signVariations_filter_ne_zero",
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
  "slug": "signvariations-filter-ne-zero--b6abc239d51d5c7984760e22",
  "source": {
    "blob": "bf9a8c29996841d5dfddf5c154805ec8c0161d80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/SignVariations/Variant49f0801cd65db9df7116941ffde7b0b8d072be47777969e1aaf8f0071cede38f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6abc239d51d5c7984760e2219084392d23b6d0fb4f8d9d1c7b3fff0eeaccee9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SignVariations/Variant49f0801cd65db9df7116941ffde7b0b8d072be47777969e1aaf8f0071cede38f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77e4d1ae-c1c5-c241-74e5-bc48a3e70216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma signVariations_filter_ne_zero (l : List α) :
    signVariations (l.filter (fun x => !decide (x = 0))) = signVariations l := by
  simp [signVariations, filter_map, Function.comp_def, sign_eq_zero_iff]

/-- A zero entry in second position does not change the sign variations. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SignVariations/Variant49f0801cd65db9df7116941ffde7b0b8d072be47777969e1aaf8f0071cede38f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SignVariations/Variant49f0801cd65db9df7116941ffde7b0b8d072be47777969e1aaf8f0071cede38f.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf9a8c29996841d5dfddf5c154805ec8c0161d80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
