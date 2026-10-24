# commGroupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0ea78540834909e57b40e626a00cc6de9baa89442c71188e2b253bb8c4e79af",
  "kind": "instance",
  "lexical_name": "commGroupWithZero",
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
  "slug": "commgroupwithzero--416250b150e8f18199e34db5",
  "source": {
    "blob": "9e8ece665efaf8d2d37fa86e246c44a78e60a49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 165,
    "path": "GRWTSK/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:416250b150e8f18199e34db57f9172dc38bb3fbe7b363e9046d89574c372423a",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0ea78540834909e57b40e626a00cc6de9baa89442c71188e2b253bb8c4e79af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commGroupWithZero :
    CommGroupWithZero (ValueGroup A K) :=
  { mul_assoc := by rintro ⟨a⟩ ⟨b⟩ ⟨c⟩; apply Quotient.sound'; rw [mul_assoc]
    one_mul := by rintro ⟨a⟩; apply Quotient.sound'; rw [one_mul]
    mul_one := by rintro ⟨a⟩; apply Quotient.sound'; rw [mul_one]
    mul_comm := by rintro ⟨a⟩ ⟨b⟩; apply Quotient.sound'; rw [mul_comm]
    zero_mul := by rintro ⟨a⟩; apply Quotient.sound'; rw [zero_mul]
    mul_zero := by rintro ⟨a⟩; apply Quotient.sound'; rw [mul_zero]
    exists_pair_ne := by
      use 0, 1
      intro c; obtain ⟨d, hd⟩ := Quotient.exact' c
      apply_fun fun t => d⁻¹ • t at hd
      simp only [inv_smul_smul, smul_zero, one_ne_zero] at hd
    inv_zero := by apply Quotient.sound'; rw [inv_zero]
    mul_inv_cancel := by
      rintro ⟨a⟩ ha
      apply Quotient.sound'
      use 1
      simp only [one_smul, ne_eq]
      apply (mul_inv_cancel₀ _).symm
      contrapose ha
      simp only [Classical.not_not] at ha ⊢
      rw [ha]
      rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationRing/Variant0b09bdaf4d9674af659e588f770987e67608b9e6ecf0b1ab1ba06d0e2cff44ae.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8ece665efaf8d2d37fa86e246c44a78e60a49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
