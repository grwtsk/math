# finite_of_algHom_finiteType_of_isJacobsonRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a9613649e0abfe831ca64b6019ba7500d3c2e9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 699,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c615e12f-f923-ad4c-221d-88c61bb578cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c891a58-7ecb-7a33-7975-c037bb713f7c",
  "kind": "theorem",
  "lexical_name": "finite_of_algHom_finiteType_of_isJacobsonRing",
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
  "slug": "finite-of-alghom-finitetype-of-isjacobsonring--7032afcccf6621d6d9559ae9",
  "source": {
    "blob": "6a9613649e0abfe831ca64b6019ba7500d3c2e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 712,
    "line": 699,
    "path": "GRWTSK/Algebra/Ring/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7032afcccf6621d6d9559ae952fad62aa79e4c3175e5f42d110405e5d218fa23",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c891a58-7ecb-7a33-7975-c037bb713f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–712.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_algHom_finiteType_of_isJacobsonRing
    {K L A : Type*} [CommRing K] [DivisionRing L] [CommRing A]
    [IsJacobsonRing K] [IsNoetherianRing K] [Nontrivial A]
    [Algebra K L] [Algebra K A]
    [Algebra.FiniteType K A] (f : L →ₐ[K] A) :
    Module.Finite K L := by
  obtain ⟨m, hm⟩ := Ideal.exists_maximal A
  let := Ideal.Quotient.field m
  have := finite_of_finite_type_of_isJacobsonRing K (A ⧸ m)
  exact Module.Finite.of_injective ((Ideal.Quotient.mkₐ K m).comp f).toLinearMap
    (RingHom.injective _)

/-- If `K` is a Jacobson Noetherian ring, `A` a nontrivial `K`-algebra of finite type,
then any `K`-subfield of `A` is finite over `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variante2c9fc4d42bb97de634cb5878d9d6d012f4170f9e54122391de18e323147497b.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9613649e0abfe831ca64b6019ba7500d3c2e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
