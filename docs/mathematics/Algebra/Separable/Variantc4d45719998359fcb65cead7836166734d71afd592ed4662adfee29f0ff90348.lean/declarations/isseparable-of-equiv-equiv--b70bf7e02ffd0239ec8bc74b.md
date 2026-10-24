# IsSeparable.of_equiv_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6597af408428e0c64eaaeafc226086b1b7ec8aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 730,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dcb9a20-15cb-7989-dc63-49132075876a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2241fc8a-b3fb-716a-8bb8-42e9f172f821",
  "kind": "lemma",
  "lexical_name": "IsSeparable.of_equiv_equiv",
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
  "slug": "isseparable-of-equiv-equiv--b70bf7e02ffd0239ec8bc74b",
  "source": {
    "blob": "d6597af408428e0c64eaaeafc226086b1b7ec8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 745,
    "line": 730,
    "path": "GRWTSK/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b70bf7e02ffd0239ec8bc74bbd218fb1787bfa214dccddf8708a12557dc852f1",
  "verification": {
    "reference": "docs/verification/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2241fc8a-b3fb-716a-8bb8-42e9f172f821`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSeparable.of_equiv_equiv {x : B₁} (h : IsSeparable A₁ x) : IsSeparable A₂ (e₂ x) :=
  letI := e₁.toRingHom.toAlgebra
  letI : Algebra A₂ B₁ :=
    { (algebraMap A₁ B₁).comp e₁.symm.toRingHom with
        algebraMap := (algebraMap A₁ B₁).comp e₁.symm.toRingHom
        smul := fun a b ↦ ((algebraMap A₁ B₁).comp e₁.symm.toRingHom a) * b
        commutes' := fun r x ↦ (Algebra.commutes) (e₁.symm.toRingHom r) x
        smul_def' := fun _ _ ↦ rfl }
  haveI : IsScalarTower A₁ A₂ B₁ := IsScalarTower.of_algebraMap_eq <| fun x ↦
      (algebraMap A₁ B₁).congr_arg <| id ((e₁.symm_apply_apply x).symm)
  let e : B₁ ≃ₐ[A₂] B₂ :=
    { e₂ with
      commutes' := fun x ↦ by
        simpa [RingHom.algebraMap_toAlgebra] using DFunLike.congr_fun he.symm (e₁.symm x) }
  (AlgEquiv.isSeparable_iff e).mpr <| IsSeparable.tower_top A₂ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6597af408428e0c64eaaeafc226086b1b7ec8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
