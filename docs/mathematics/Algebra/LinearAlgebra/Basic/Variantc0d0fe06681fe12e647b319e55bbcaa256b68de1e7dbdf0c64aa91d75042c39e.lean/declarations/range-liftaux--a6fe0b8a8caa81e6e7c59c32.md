# range_liftAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba76f7b04ecf154170ced7e3cfa80b3162c7ba51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1019,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71da8353-2332-016a-89bc-8c3aab6bbe84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e9948be-c9e5-2e01-ca57-96f96ae4de01",
  "kind": "theorem",
  "lexical_name": "range_liftAux",
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
  "slug": "range-liftaux--a6fe0b8a8caa81e6e7c59c32",
  "source": {
    "blob": "ba76f7b04ecf154170ced7e3cfa80b3162c7ba51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1034,
    "line": 1019,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6fe0b8a8caa81e6e7c59c32ca4b4f37cde9076a23b78cdb730adbff36593925",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e9948be-c9e5-2e01-ca57-96f96ae4de01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1019–1034.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_liftAux (f : R →ₐ[S] A) (g : M →ₗ[S] A)
    (hg : ∀ x y, g x * g y = 0)
    (hfg : ∀ r x, g (r •> x) = f r * g x)
    (hgf : ∀ r x, g (x <• r) = g x * f r) :
    (lift f g hg hfg hgf).range = f.range ⊔ Algebra.adjoin S (Set.range g) := by
  simp_rw [← Algebra.map_top, ← range_inlAlgHom_sup_adjoin_range_inr, Algebra.map_sup,
    AlgHom.map_adjoin, ← AlgHom.range_comp, lift_comp_inlHom, ← Set.range_comp, Function.comp_def,
    lift_apply_inr, Algebra.map_top]

/-- A universal property of the trivial square-zero extension, providing a unique
`TrivSqZeroExt R M →ₐ[R] A` for every pair of maps `f : R →ₐ[S] A` and `g : M →ₗ[S] A`,
where the range of `g` has no non-zero products, and scaling the input to `g` on the left or right
amounts to a corresponding multiplication by `f` in the output.

This isomorphism is named to match the very similar `Complex.lift`. -/
@[simps! apply symm_apply_coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc0d0fe06681fe12e647b319e55bbcaa256b68de1e7dbdf0c64aa91d75042c39e.lean#L1019).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba76f7b04ecf154170ced7e3cfa80b3162c7ba51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
