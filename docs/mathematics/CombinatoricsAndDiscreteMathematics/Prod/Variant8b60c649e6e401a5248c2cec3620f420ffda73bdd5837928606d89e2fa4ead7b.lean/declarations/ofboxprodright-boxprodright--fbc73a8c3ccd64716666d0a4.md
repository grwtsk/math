# ofBoxProdRight_boxProdRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c6fc7955102b936ef273b3a1421882b93463774",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1027c46-ba9b-0d3f-337a-3eaa8d8be34f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee072ab5-0438-1462-8e96-7dee1ef87d9c",
  "kind": "theorem",
  "lexical_name": "ofBoxProdRight_boxProdRight",
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
  "slug": "ofboxprodright-boxprodright--fbc73a8c3ccd64716666d0a4",
  "source": {
    "blob": "2c6fc7955102b936ef273b3a1421882b93463774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbc73a8c3ccd64716666d0a46df8956f7b6dd38a477d2cdb6035dfce2b780bc5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee072ab5-0438-1462-8e96-7dee1ef87d9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofBoxProdRight_boxProdRight [DecidableEq α] [DecidableRel G.Adj] {a b₁ b₂ : α} :
    ∀ (w : G.Walk b₁ b₂), (w.boxProdRight G a).ofBoxProdRight = w
  | nil => rfl
  | cons' x y z h w => by
    rw [Walk.boxProdRight, map_cons, ofBoxProdRight, Or.by_cases, dif_pos, ←
      Walk.boxProdRight]
    · simp [ofBoxProdRight_boxProdRight]
    · exact ⟨h, rfl⟩

@[deprecated (since := "2025-03-30")]
alias ofBoxProdLeft_boxProdRight := ofBoxProdRight_boxProdRight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c6fc7955102b936ef273b3a1421882b93463774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
