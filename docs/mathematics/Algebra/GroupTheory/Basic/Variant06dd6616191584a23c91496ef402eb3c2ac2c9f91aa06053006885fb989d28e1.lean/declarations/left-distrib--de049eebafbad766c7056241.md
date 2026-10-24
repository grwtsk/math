# left_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd995c5e-00af-dc5f-3485-b7c9861fc237",
  "kind": "theorem",
  "lexical_name": "left_distrib",
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
  "slug": "left-distrib--de049eebafbad766c7056241",
  "source": {
    "blob": "6a06b433741f3b74838de3af4a9b25caefd68eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 738,
    "line": 708,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de049eebafbad766c7056241cf3bb31c34989dc0dc553df1cc774c610c88fdb2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd995c5e-00af-dc5f-3485-b7c9861fc237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–738.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem left_distrib (x y z : R[S⁻¹]) : x * (y + z) = x * y + x * z := by
  induction' x using OreLocalization.ind with r₁ s₁
  induction' y using OreLocalization.ind with r₂ s₂
  induction' z using OreLocalization.ind with r₃ s₃
  rcases oreDivAddChar' r₂ r₃ s₂ s₃ with ⟨ra, sa, ha, q⟩
  rw [q]
  clear q
  rw [OreLocalization.expand' r₂ s₂ sa]
  rcases oreDivMulChar' r₁ (r₂ * sa) s₁ (s₂ * sa) with ⟨rb, sb, hb, q⟩
  rw [q]
  clear q
  have hs₃rasb : ↑s₃ * (ra * sb) ∈ S := by
    rw [← mul_assoc, ← ha]
    norm_cast
    apply SetLike.coe_mem
  rw [OreLocalization.expand _ _ _ hs₃rasb]
  have ha' : ↑(s₂ * sa * sb) = ↑s₃ * (ra * sb) := by simp [ha, ← mul_assoc]
  rw [← Subtype.coe_eq_of_eq_mk ha']
  rcases oreDivMulChar' r₁ (r₃ * (ra * sb)) s₁ (s₂ * sa * sb) with ⟨rc, sc, hc, hc'⟩
  rw [hc']
  rw [oreDiv_add_char (s₂ * sa * sb) (s₂ * sa * sb * sc) 1 sc (by simp)]
  rw [OreLocalization.expand' (r₂ * ↑sa + r₃ * ra) (s₂ * sa) (sb * sc)]
  conv_lhs =>
    congr
    · skip
    congr
    rw [add_mul, S.coe_mul, ← mul_assoc, hb, ← mul_assoc, mul_assoc r₃, hc, mul_assoc, ← mul_add]
  rw [OreLocalization.mul_cancel']
  simp only [mul_one, Submonoid.coe_mul, mul_add, ← mul_assoc]
#align ore_localization.left_distrib OreLocalization.left_distrib

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a06b433741f3b74838de3af4a9b25caefd68eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
