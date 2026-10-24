# hasBasis_approximateUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:167d3551-a291-3815-05ad-e0859d6c723e",
  "kind": "lemma",
  "lexical_name": "hasBasis_approximateUnit",
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
  "slug": "hasbasis-approximateunit--cf0d36a8b1dc954109c18558",
  "source": {
    "blob": "a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf0d36a8b1dc954109c1855810d996c75ec95f0f32a88f701a7c16ac5d8bbd16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:167d3551-a291-3815-05ad-e0859d6c723e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasBasis_approximateUnit :
    (approximateUnit A).HasBasis (fun x : A ↦ 0 ≤ x ∧ ‖x‖ < 1) ({x | · ≤ x} ∩ closedBall 0 1) :=
  isBasis_nonneg_sections A |>.hasBasis.inf_principal (closedBall 0 1)

/-- This is a common reasoning sequence in C⋆-algebra theory. If `0 ≤ x ≤ y ≤ 1`, then the norm of
`z - y * z` is controlled by the norm of `star z * (1 - x) * z`, which is advantageous because the
latter is nonnegative. This is a key step in establishing the existence of an increasing approximate
unit in general C⋆-algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
