# Basis.ext_alternating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "944fa4bbe73214fe669516ed3abc5f26cc2eaf62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 881,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9ec0fb6-530c-5d84-27c5-4a3789af52db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e25923e-966e-cd65-3eee-fae563a103a3",
  "kind": "theorem",
  "lexical_name": "Basis.ext_alternating",
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
  "slug": "basis-ext-alternating--fe3e551891c426b698081178",
  "source": {
    "blob": "944fa4bbe73214fe669516ed3abc5f26cc2eaf62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 899,
    "line": 881,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe3e551891c426b698081178ec87ef62016fb4da0071168378e09302fcbaa821",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e25923e-966e-cd65-3eee-fae563a103a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–899.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Basis.ext_alternating {f g : N₁ [⋀^ι]→ₗ[R'] N₂} (e : Basis ι₁ R' N₁)
    (h : ∀ v : ι → ι₁, Function.Injective v → (f fun i => e (v i)) = g fun i => e (v i)) :
    f = g := by
  refine AlternatingMap.coe_multilinearMap_injective (Basis.ext_multilinear (fun _ ↦ e) fun v => ?_)
  by_cases hi : Function.Injective v
  · exact h v hi
  · have : ¬Function.Injective fun i => e (v i) := hi.imp Function.Injective.of_comp
    rw [coe_multilinearMap, coe_multilinearMap, f.map_eq_zero_of_not_injective _ this,
      g.map_eq_zero_of_not_injective _ this]

end Basis

variable {R' : Type*} {M'' M₂'' N'' N₂'' : Type*} [CommSemiring R'] [AddCommMonoid M'']
  [AddCommMonoid M₂''] [AddCommMonoid N''] [AddCommMonoid N₂''] [Module R' M''] [Module R' M₂'']
  [Module R' N''] [Module R' N₂'']

/-- The space of constant maps is equivalent to the space of maps that are alternating with respect
to an empty family. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `944fa4bbe73214fe669516ed3abc5f26cc2eaf62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
