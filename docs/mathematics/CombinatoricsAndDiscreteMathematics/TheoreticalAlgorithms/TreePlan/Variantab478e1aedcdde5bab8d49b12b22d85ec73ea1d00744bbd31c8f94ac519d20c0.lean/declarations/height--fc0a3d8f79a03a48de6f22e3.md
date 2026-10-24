# height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac2e726ae9a078b19e9d15a5ac5638dfe1b1f84d6503a679baee8b4d6dd5b1c3",
  "kind": "def",
  "lexical_name": "height",
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
  "slug": "height--fc0a3d8f79a03a48de6f22e3",
  "source": {
    "blob": "cd5719be3f0e9033aa90c789a3aa70f62c86870b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variantab478e1aedcdde5bab8d49b12b22d85ec73ea1d00744bbd31c8f94ac519d20c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc0a3d8f79a03a48de6f22e3651c1726d9d23e8733011a75285088016bec6971",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variantab478e1aedcdde5bab8d49b12b22d85ec73ea1d00744bbd31c8f94ac519d20c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac2e726ae9a078b19e9d15a5ac5638dfe1b1f84d6503a679baee8b4d6dd5b1c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def height {K : KernelPresentation.{u}} {J : K.Judgment} :
      TreePlan K J → Nat
    | .node _ children => 1 + heightAll children

  /--
  **Architectural problem:** Node height needs a maximum over heterogeneous plans.
  **Important data and indices:** `js` fixes the ordered child judgments.
  **Type-enforced invariant:** The fold cannot admit an unindexed child.
  **Layer boundary:** This is an auxiliary syntax metric.
  **Worked example:** `.nil` has maximum height zero.
  **Used by:** `TreePlan.height` and height-preservation induction.
  **Proof idea:** Take the maximum of head and tail heights.
  **Equality notion:** Results use natural-number equality.
  **Boundary cases:** Empty input returns zero.
  **Validation consequence:** All plan branches contribute to the depth bound.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variantab478e1aedcdde5bab8d49b12b22d85ec73ea1d00744bbd31c8f94ac519d20c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variantab478e1aedcdde5bab8d49b12b22d85ec73ea1d00744bbd31c8f94ac519d20c0.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5719be3f0e9033aa90c789a3aa70f62c86870b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
