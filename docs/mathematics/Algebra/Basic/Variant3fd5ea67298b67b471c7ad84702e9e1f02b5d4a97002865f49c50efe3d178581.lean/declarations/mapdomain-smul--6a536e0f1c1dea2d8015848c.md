# mapDomain_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c2fb63218c64aeb5ff69d438efd49e88e4245ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 545,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dbf704f-0ac0-7c14-3e55-7ebdd0c49172",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e33bb21-9549-d15b-3002-e032d5e51b35",
  "kind": "theorem",
  "lexical_name": "mapDomain_smul",
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
  "slug": "mapdomain-smul--6a536e0f1c1dea2d8015848c",
  "source": {
    "blob": "5c2fb63218c64aeb5ff69d438efd49e88e4245ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 545,
    "path": "GRWTSK/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a536e0f1c1dea2d8015848c973c803b5ae1e9e6c9bfb1701d054c8381254024",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e33bb21-9549-d15b-3002-e032d5e51b35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapDomain_smul {R : Type*} [Monoid R] [DistribMulAction R k] {b : R} :
    mapDomain f (b • v) = b • mapDomain f v := by ext; simp [Finsupp.mapDomain_smul]

/-- A non-commutative version of `SkewMonoidAlgebra.lift`: given an additive homomorphism
`f : k →+ R` and a homomorphism `g : G → R`, returns the additive homomorphism from
`SkewMonoidAlgebra k G` such that `liftNC f g (single a b) = f b * g a`.

If `k` is a semiring and `f` is a ring homomorphism and for all `x : R`, `y : G` the equality
`(f (y • x)) * g y = (g y) * (f x))` holds, then the result is a ring homomorphism (see
`SkewMonoidAlgebra.liftNCRingHom`).

If `R` is a `k`-algebra and `f = algebraMap k R`, then the result is an algebra homomorphism called
`SkewMonoidAlgebra.lift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3fd5ea67298b67b471c7ad84702e9e1f02b5d4a97002865f49c50efe3d178581.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2fb63218c64aeb5ff69d438efd49e88e4245ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
