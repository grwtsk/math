# projRight_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bff5b8a-2edb-24df-8e5a-73bcd0ec0a04",
  "kind": "theorem",
  "lexical_name": "projRight_prod",
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
  "slug": "projright-prod--2a00c2af4c715b2804b4a1c4",
  "source": {
    "blob": "10c017e1753a2f1d0747299430ad5e5fd3e6b5a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 255,
    "path": "GRWTSK/Topology/AlgebraicTopology/Product/Variant36b34c63a3fe407620f6c75b11cb105d7c91d3b9dd7b48893e7b1aedd96cd007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a00c2af4c715b2804b4a1c43735825e788a3ef8bdf53ba6b0122a9e4c61e1dc",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Product/Variant36b34c63a3fe407620f6c75b11cb105d7c91d3b9dd7b48893e7b1aedd96cd007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bff5b8a-2edb-24df-8e5a-73bcd0ec0a04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projRight_prod : projRight (prod q₁ q₂) = q₂ := by
  apply Quotient.inductionOn₂ (motive := _) q₁ q₂
  intro p₁ p₂
  unfold projRight
  rw [prod_lift, ← Path.Homotopic.map_lift]
  congr
#align path.homotopic.proj_right_prod Path.Homotopic.projRight_prod

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Product/Variant36b34c63a3fe407620f6c75b11cb105d7c91d3b9dd7b48893e7b1aedd96cd007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Product/Variant36b34c63a3fe407620f6c75b11cb105d7c91d3b9dd7b48893e7b1aedd96cd007.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c017e1753a2f1d0747299430ad5e5fd3e6b5a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
