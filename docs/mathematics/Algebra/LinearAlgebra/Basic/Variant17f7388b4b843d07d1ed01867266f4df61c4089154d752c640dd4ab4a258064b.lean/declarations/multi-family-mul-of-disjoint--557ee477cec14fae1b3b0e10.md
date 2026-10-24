# ιMulti_family_mul_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa691907-4341-0a53-674e-899ec219c44e",
  "kind": "lemma",
  "lexical_name": "ιMulti_family_mul_of_disjoint",
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
  "slug": "multi-family-mul-of-disjoint--557ee477cec14fae1b3b0e10",
  "source": {
    "blob": "99419e6ade7cca7973305f746b70dda7831b798e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 385,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant17f7388b4b843d07d1ed01867266f4df61c4089154d752c640dd4ab4a258064b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557ee477cec14fae1b3b0e10720faf5b156c0fa754fd161e092f3e1474a63a54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant17f7388b4b843d07d1ed01867266f4df61c4089154d752c640dd4ab4a258064b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa691907-4341-0a53-674e-899ec219c44e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιMulti_family_mul_of_disjoint {m n : ℕ} {I : Type*} [LinearOrder I] (v : I → M)
    (s : powersetCard I m) (t : powersetCard I n) (h : Disjoint s.val t.val) :
    ιMulti_family R m v s * ιMulti_family R n v t =
      (permOfDisjoint h).sign • ιMulti_family R (m + n) v (disjUnion h) := by
  simp only [ιMulti_family, ιMulti_mul_ιMulti]
  rw [← AlternatingMap.map_perm, permOfDisjoint]
  congr
  ext i
  let e := powersetCard.orderIsoOfFin (powersetCard.disjUnion h)
  change _ = v (e (e.symm _))
  by_cases! hi : i < m
  · rw [← Fin.castAdd_castLT n i hi, Fin.append_left, OrderIso.apply_symm_apply,
      finSumFinEquiv_symm_apply_castAdd]
    aesop
  · rw [← Fin.natAdd_subNat_cast hi, Fin.append_right, OrderIso.apply_symm_apply,
      finSumFinEquiv_symm_apply_natAdd]
    aesop

section anticomm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant17f7388b4b843d07d1ed01867266f4df61c4089154d752c640dd4ab4a258064b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant17f7388b4b843d07d1ed01867266f4df61c4089154d752c640dd4ab4a258064b.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99419e6ade7cca7973305f746b70dda7831b798e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
