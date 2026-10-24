# ofMulAction_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ee52b4a86599b16832f7d5d738c8a78e511b4e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adb2c5a0855cecb7c01f4c6670b6af3cf3cde593fd32445da4d476b48d2e60f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8da6bc1a-819e-1cf8-c6b0-5868f3e63d54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f6bbbf1-e910-4aaa-94e1-666641664a2e",
  "kind": "theorem",
  "lexical_name": "ofMulAction_apply",
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
  "slug": "ofmulaction-apply--2bf1a8df6f1a57d5e8ac1f9a",
  "source": {
    "blob": "7ee52b4a86599b16832f7d5d738c8a78e511b4e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantadb2c5a0855cecb7c01f4c6670b6af3cf3cde593fd32445da4d476b48d2e60f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bf1a8df6f1a57d5e8ac1f9a9e4500284b21b70b748f6dd78ab4b1f198e67b0e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantadb2c5a0855cecb7c01f4c6670b6af3cf3cde593fd32445da4d476b48d2e60f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f6bbbf1-e910-4aaa-94e1-666641664a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofMulAction_apply {G : Type*} {H : FintypeCat.{u}} [Monoid G] [MulAction G H]
    (g : G) (x : H) : ConcreteCategory.hom ((FintypeCat.ofMulAction G H).ρ g) x = (g • x : H) :=
  rfl

section

/-- Shorthand notation for the quotient of `G` by `H` as a finite `G`-set. -/
notation:10 G:10 " ⧸ₐ " H:10 => Action.FintypeCat.ofMulAction G ↧(G ⧸ H)

variable {G : Type*} [Group G] (H N : Subgroup G) [Fintype (G ⧸ N)]

set_option backward.isDefEq.respectTransparency.types false in
/-- If `N` is a normal subgroup of `G`, then this is the group homomorphism
sending an element `g` of `G` to the `G`-endomorphism of `G ⧸ₐ N` given by
multiplication with `g⁻¹` on the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantadb2c5a0855cecb7c01f4c6670b6af3cf3cde593fd32445da4d476b48d2e60f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variantadb2c5a0855cecb7c01f4c6670b6af3cf3cde593fd32445da4d476b48d2e60f2.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee52b4a86599b16832f7d5d738c8a78e511b4e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
