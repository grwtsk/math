# prod_ext_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9eb725e8ffaff98a90c1b777aa46ef69320aa54e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd1a4b14f27eb8b4ddd1ac832de74d36a20af381922c32b31eedc8ff62c7d0d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1a3e05a-7247-3407-05e7-f1c4b1ceba56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f53d1e6-eed8-47e3-2bf9-910ffcccfe53",
  "kind": "theorem",
  "lexical_name": "prod_ext_iff",
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
  "slug": "prod-ext-iff--159a8f26f5d465d811c668ad",
  "source": {
    "blob": "9eb725e8ffaff98a90c1b777aa46ef69320aa54e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 269,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variantcd1a4b14f27eb8b4ddd1ac832de74d36a20af381922c32b31eedc8ff62c7d0d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:159a8f26f5d465d811c668ad404a3a67587b5a62516d9c7625021213657b643f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variantcd1a4b14f27eb8b4ddd1ac832de74d36a20af381922c32b31eedc8ff62c7d0d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f53d1e6-eed8-47e3-2bf9-910ffcccfe53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_ext_iff {f g : M × M₂ →ₗ[R] M₃} :
    f = g ↔ f.comp (inl _ _ _) = g.comp (inl _ _ _) ∧ f.comp (inr _ _ _) = g.comp (inr _ _ _) :=
  (coprodEquiv ℕ).symm.injective.eq_iff.symm.trans Prod.ext_iff

/--
Split equality of linear maps from a product into linear maps over each component, to allow `ext`
to apply lemmas specific to `M →ₗ M₃` and `M₂ →ₗ M₃`.

See note [partially-applied ext lemmas]. -/
@[ext 1100]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variantcd1a4b14f27eb8b4ddd1ac832de74d36a20af381922c32b31eedc8ff62c7d0d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variantcd1a4b14f27eb8b4ddd1ac832de74d36a20af381922c32b31eedc8ff62c7d0d8.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eb725e8ffaff98a90c1b777aa46ef69320aa54e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
