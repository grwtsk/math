# mul_right_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fdbe32c-0f70-e5cc-6a40-85cc72a7505c",
  "kind": "theorem",
  "lexical_name": "mul_right_of_commute",
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
  "slug": "mul-right-of-commute--d09e0dc22fe16e32bac6da50",
  "source": {
    "blob": "d2cddf0e05fddaab8cfb22faca8ff245d01e3623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d09e0dc22fe16e32bac6da50a28947f0c8ec9f534f7fc7ccf315e2adb7f85af0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fdbe32c-0f70-e5cc-6a40-85cc72a7505c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_right_of_commute [IsLinearTopology Rᵐᵒᵖ R]
    {a b : R} (ha : IsTopologicallyNilpotent a) (hab : Commute a b) :
    IsTopologicallyNilpotent (a * b) := by
  simp_rw [IsTopologicallyNilpotent, hab.mul_pow]
  exact IsLinearTopology.tendsto_mul_zero_of_left _ _ ha

/-- If `a` and `b` commute and `b` is topologically nilpotent,
  then `a * b` is topologically nilpotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2cddf0e05fddaab8cfb22faca8ff245d01e3623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
