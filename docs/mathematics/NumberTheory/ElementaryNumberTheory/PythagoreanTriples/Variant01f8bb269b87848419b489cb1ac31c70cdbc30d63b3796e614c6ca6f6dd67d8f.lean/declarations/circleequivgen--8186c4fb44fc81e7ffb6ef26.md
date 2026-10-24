# circleEquivGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ab1fe237afac1e1ebae4c802b78c263cdc80ae3ca8c078e0990e38a5d1e1b95",
  "kind": "def",
  "lexical_name": "circleEquivGen",
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
  "slug": "circleequivgen--8186c4fb44fc81e7ffb6ef26",
  "source": {
    "blob": "42638fd92f011c676c1fbbaa562c389d8592378c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 286,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8186c4fb44fc81e7ffb6ef26672f0844691af22afc424bdaac5b43f557e4360c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ab1fe237afac1e1ebae4c802b78c263cdc80ae3ca8c078e0990e38a5d1e1b95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def circleEquivGen (hk : ∀ x : K, 1 + x ^ 2 ≠ 0) :
    K ≃ { p : K × K // p.1 ^ 2 + p.2 ^ 2 = 1 ∧ p.2 ≠ -1 } where
  toFun x :=
    ⟨⟨2 * x / (1 + x ^ 2), (1 - x ^ 2) / (1 + x ^ 2)⟩, by
      field_simp [hk x, div_pow]
      ring, by
      simp only [Ne.def, div_eq_iff (hk x), neg_mul, one_mul, neg_add, sub_eq_add_neg, add_left_inj]
      simpa only [eq_neg_iff_add_eq_zero, one_pow] using hk 1⟩
  invFun p := (p : K × K).1 / ((p : K × K).2 + 1)
  left_inv x := by
    have h2 : (1 + 1 : K) = 2 := by norm_num -- Porting note: rfl is not enough to close this
    have h3 : (2 : K) ≠ 0 := by
      convert hk 1
      rw [one_pow 2, h2]
    field_simp [hk x, h2, add_assoc, add_comm, add_sub_cancel'_right, mul_comm]
  right_inv := fun ⟨⟨x, y⟩, hxy, hy⟩ => by
    change x ^ 2 + y ^ 2 = 1 at hxy
    have h2 : y + 1 ≠ 0 := mt eq_neg_of_add_eq_zero_left hy
    have h3 : (y + 1) ^ 2 + x ^ 2 = 2 * (y + 1) := by
      rw [(add_neg_eq_iff_eq_add.mpr hxy.symm).symm]
      ring
    have h4 : (2 : K) ≠ 0 := by
      convert hk 1
      rw [one_pow 2]
      ring -- Porting note: rfl is not enough to close this
    simp only [Prod.mk.inj_iff, Subtype.mk_eq_mk]
    constructor
    · field_simp [h3]
      ring
    · field_simp [h3]
      rw [← add_neg_eq_iff_eq_add.mpr hxy.symm]
      ring
#align circle_equiv_gen circleEquivGen

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42638fd92f011c676c1fbbaa562c389d8592378c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
