# Associates.isAtom_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9acf7563-82e2-3557-73c8-06055595e9fd",
  "kind": "theorem",
  "lexical_name": "Associates.isAtom_iff",
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
  "slug": "associates-isatom-iff--06275abbcad74e01df45cfa8",
  "source": {
    "blob": "cf6279dbc6e2330cd114b57f377f15a6fb4d8011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06275abbcad74e01df45cfa8ac34741aeabbeae2635d44043c2a656c5882bc95",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9acf7563-82e2-3557-73c8-06055595e9fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Associates.isAtom_iff {p : Associates M} (h₁ : p ≠ 0) : IsAtom p ↔ Irreducible p :=
  ⟨fun hp =>
    ⟨by simpa only [Associates.isUnit_iff_eq_one] using hp.1, fun a b h =>
      (hp.le_iff.mp ⟨_, h⟩).casesOn (fun ha => Or.inl (a.isUnit_iff_eq_one.mpr ha)) fun ha =>
        Or.inr
          (show IsUnit b by
            rw [ha] at h
            apply isUnit_of_associated_mul (show Associated (p * b) p by conv_rhs => rw [h]) h₁)⟩,
    fun hp =>
    ⟨by simpa only [Associates.isUnit_iff_eq_one, Associates.bot_eq_one] using hp.1,
      fun b ⟨⟨a, hab⟩, hb⟩ =>
      (hp.isUnit_or_isUnit hab).casesOn
        (fun hb => show b = ⊥ by rwa [Associates.isUnit_iff_eq_one, ← Associates.bot_eq_one] at hb)
        fun ha =>
        absurd
          (show p ∣ b from
            ⟨(ha.unit⁻¹ : Units _), by
              simp [hab]; rw [mul_assoc]; rw [IsUnit.mul_val_inv ha]; rw [mul_one]⟩)
          hb⟩⟩
#align associates.is_atom_iff Associates.isAtom_iff

open UniqueFactorizationMonoid multiplicity Irreducible Associates

namespace DivisorChain

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ChainOfDivisors/Variant22103b04e2beeea3ed51fde95c7528c7c9d99581934ef58ff543f227f13dc843.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf6279dbc6e2330cd114b57f377f15a6fb4d8011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
