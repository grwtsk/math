# height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7373824fca41afccc82853fd16803ae97ae293b736fc1722b4800fe6f1dc1bc2",
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
  "slug": "height--a05883b2beefdfbc821723d6",
  "source": {
    "blob": "39b6a434abdcb18606dd8bd749d94b9105f127dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a05883b2beefdfbc821723d6875ee0380ec296635ff51efe0bb56e4443857503",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7373824fca41afccc82853fd16803ae97ae293b736fc1722b4800fe6f1dc1bc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–161.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreePlan/Variant3796440d528d629e1013fbf23330d16dd11c350a1e7b440a132e2c3ed933c57e.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39b6a434abdcb18606dd8bd749d94b9105f127dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
