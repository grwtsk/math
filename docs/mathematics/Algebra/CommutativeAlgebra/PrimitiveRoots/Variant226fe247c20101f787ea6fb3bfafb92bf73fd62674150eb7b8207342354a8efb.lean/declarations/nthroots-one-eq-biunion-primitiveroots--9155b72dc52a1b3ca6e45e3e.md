# nthRoots_one_eq_biUnion_primitiveRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f4c2e50f26687e733bc861fc76113cdea9b3a69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 769,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f4a6287-e253-857d-6a93-32e847e88110",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8149d37-f29c-0bca-dcb8-250154f1f706",
  "kind": "theorem",
  "lexical_name": "nthRoots_one_eq_biUnion_primitiveRoots",
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
  "slug": "nthroots-one-eq-biunion-primitiveroots--9155b72dc52a1b3ca6e45e3e",
  "source": {
    "blob": "0f4c2e50f26687e733bc861fc76113cdea9b3a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 769,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9155b72dc52a1b3ca6e45e3e23b5fc6ae8a2732917c8847d4257e82bef23d379",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8149d37-f29c-0bca-dcb8-250154f1f706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 769–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nthRoots_one_eq_biUnion_primitiveRoots [DecidableEq R] {n : ℕ} :
    nthRootsFinset n (1 : R) = (Nat.divisors n).biUnion fun i ↦ primitiveRoots i R := by
  by_cases hn : n = 0
  · simp only [hn, nthRootsFinset_zero, Nat.divisors_zero, biUnion_empty]
  have : NeZero n := ⟨hn⟩
  exact nthRoots_one_eq_biUnion_primitiveRoots'

end IsDomain

section Automorphisms

variable [CommRing S] [IsDomain S] {μ : S} {n : ℕ} (hμ : IsPrimitiveRoot μ n) (R) [CommRing R]
  [Algebra R S]

/-- The `MonoidHom` that takes an automorphism to the power of `μ` that `μ` gets mapped to
under it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean#L769).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f4c2e50f26687e733bc861fc76113cdea9b3a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
