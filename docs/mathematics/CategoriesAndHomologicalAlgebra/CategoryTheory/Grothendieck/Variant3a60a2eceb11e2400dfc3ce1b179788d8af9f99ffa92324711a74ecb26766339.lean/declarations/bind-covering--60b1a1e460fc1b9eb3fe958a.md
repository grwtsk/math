# bind_covering

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96320b32e57cf7bef3c65089b4fc20ff1f255dcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:020ff224-8f24-a94d-58ba-d90dc75f4552",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e72ad366-22f6-5493-3d2e-e974332912bb",
  "kind": "theorem",
  "lexical_name": "bind_covering",
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
  "slug": "bind-covering--60b1a1e460fc1b9eb3fe958a",
  "source": {
    "blob": "96320b32e57cf7bef3c65089b4fc20ff1f255dcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60b1a1e460fc1b9eb3fe958a76926478a34275e771bc3c6becc601d0ca48ecf4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e72ad366-22f6-5493-3d2e-e974332912bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind_covering {S : Sieve X} {R : ∀ ⦃Y : C⦄ ⦃f : Y ⟶ X⦄, S f → Sieve Y} (hS : S ∈ J X)
    (hR : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄ (H : S f), R H ∈ J Y) : Sieve.bind S R ∈ J X :=
  J.transitive hS _ fun _ f hf => superset_covering J (Sieve.le_pullback_bind S R f hf) (hR hf)

/-- The sieve `S` on `X` `J`-covers an arrow `f` to `X` if `S.pullback f ∈ J Y`.
This definition is an alternate way of presenting a Grothendieck topology.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96320b32e57cf7bef3c65089b4fc20ff1f255dcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
