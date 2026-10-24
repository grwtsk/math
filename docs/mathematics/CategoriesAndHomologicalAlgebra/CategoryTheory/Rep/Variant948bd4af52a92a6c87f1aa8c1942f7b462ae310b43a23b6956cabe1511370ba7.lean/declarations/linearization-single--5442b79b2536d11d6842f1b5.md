# linearization_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dab5dad54b70a6471f8682e09470db35ecabdaf2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/948bd4af52a92a6c87f1aa8c1942f7b462ae310b43a23b6956cabe1511370ba7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3f12787-aab4-d478-e147-1a55905cdf65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0a78fff-759a-f5bf-38ba-796af8d14964",
  "kind": "theorem",
  "lexical_name": "linearization_single",
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
  "slug": "linearization-single--5442b79b2536d11d6842f1b5",
  "source": {
    "blob": "dab5dad54b70a6471f8682e09470db35ecabdaf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 220,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rep/Variant948bd4af52a92a6c87f1aa8c1942f7b462ae310b43a23b6956cabe1511370ba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5442b79b2536d11d6842f1b5a3fb84e46528cdee2eaafa8a70d9e2ef1716a13f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Rep/Variant948bd4af52a92a6c87f1aa8c1942f7b462ae310b43a23b6956cabe1511370ba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0a78fff-759a-f5bf-38ba-796af8d14964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearization_single (X : Action (Type u) G) (g : G) (x : X.V) (r : k) :
    ((linearization k G).obj X).ρ g (Finsupp.single x r) = Finsupp.single (X.ρ g x) r := by
  rw [linearization_obj_ρ, Finsupp.lmapDomain_apply, Finsupp.mapDomain_single]

variable {X Y : Action (Type u) G} (f : X ⟶ Y)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Rep/Variant948bd4af52a92a6c87f1aa8c1942f7b462ae310b43a23b6956cabe1511370ba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rep/Variant948bd4af52a92a6c87f1aa8c1942f7b462ae310b43a23b6956cabe1511370ba7.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dab5dad54b70a6471f8682e09470db35ecabdaf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
