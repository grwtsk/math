# Balanced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f445e2dd6e51e95b4ed936caa54363197e0d09acd1998cc05bc40108485d4930",
  "kind": "inductive",
  "lexical_name": "Balanced",
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
  "slug": "balanced--ad7c74b9432947a5e66fda4d",
  "source": {
    "blob": "796effa86ddec1de681bb483a57a836369f39de0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant198618993977a7d76e96458ded65cdd514e63f9a653d6ea7ffc5e50f804f7d31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad7c74b9432947a5e66fda4d804beef3a1ad2b97a49f52d7c28de998727c28dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant198618993977a7d76e96458ded65cdd514e63f9a653d6ea7ffc5e50f804f7d31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f445e2dd6e51e95b4ed936caa54363197e0d09acd1998cc05bc40108485d4930`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected inductive Balanced : Path α → RBColor → Nat → Prop where
  /-- The root of the tree is `c₀, n₀`-balanced by assumption. -/
  | protected root : Path.root.Balanced c₀ n₀
  /-- Descend into the left subtree of a red node. -/
  | redL : Balanced y black n → parent.Balanced red n →
    (Path.left red parent v y).Balanced black n
  /-- Descend into the right subtree of a red node. -/
  | redR : Balanced x black n → parent.Balanced red n →
    (Path.right red x v parent).Balanced black n
  /-- Descend into the left subtree of a black node. -/
  | blackL : Balanced y c₂ n → parent.Balanced black (n + 1) →
    (Path.left black parent v y).Balanced c₁ n
  /-- Descend into the right subtree of a black node. -/
  | blackR : Balanced x c₁ n → parent.Balanced black (n + 1) →
    (Path.right black x v parent).Balanced c₂ n

/--
The defining property of a balanced path: If `path` is a `c₀,n₀` tree with a `c,n` hole,
then filling the hole with a `c,n` tree yields a `c₀,n₀` tree.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant198618993977a7d76e96458ded65cdd514e63f9a653d6ea7ffc5e50f804f7d31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant198618993977a7d76e96458ded65cdd514e63f9a653d6ea7ffc5e50f804f7d31.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `796effa86ddec1de681bb483a57a836369f39de0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
