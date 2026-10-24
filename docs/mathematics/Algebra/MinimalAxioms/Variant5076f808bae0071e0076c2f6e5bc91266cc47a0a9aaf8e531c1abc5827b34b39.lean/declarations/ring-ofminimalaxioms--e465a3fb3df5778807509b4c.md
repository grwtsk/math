# Ring.ofMinimalAxioms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b53d71b7a9d27126055ecb9e363f881cbb8145179b1c0cb2d711d272d0162fab",
  "kind": "def",
  "lexical_name": "Ring.ofMinimalAxioms",
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
  "slug": "ring-ofminimalaxioms--e465a3fb3df5778807509b4c",
  "source": {
    "blob": "0856f9958fe3a3cf39bd80032f05bd759a82775c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 30,
    "path": "GRWTSK/Algebra/MinimalAxioms/Variant5076f808bae0071e0076c2f6e5bc91266cc47a0a9aaf8e531c1abc5827b34b39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e465a3fb3df5778807509b4c1b94c0dd4efe74b28fd90201aae438a67196b10f",
  "verification": {
    "reference": "docs/verification/Algebra/MinimalAxioms/Variant5076f808bae0071e0076c2f6e5bc91266cc47a0a9aaf8e531c1abc5827b34b39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b53d71b7a9d27126055ecb9e363f881cbb8145179b1c0cb2d711d272d0162fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Ring.ofMinimalAxioms {R : Type u}
    [Add R] [Mul R] [Neg R] [Zero R] [One R]
    (add_assoc : ∀ a b c : R, a + b + c = a + (b + c))
    (zero_add : ∀ a : R, 0 + a = a)
    (add_left_neg : ∀ a : R, -a + a = 0)
    (mul_assoc : ∀ a b c : R, a * b * c = a * (b * c))
    (one_mul : ∀ a : R, 1 * a = a)
    (mul_one : ∀ a : R, a * 1 = a)
    (left_distrib : ∀ a b c : R, a * (b + c) = a * b + a * c)
    (right_distrib : ∀ a b c : R, (a + b) * c = a * c + b * c) : Ring R :=
  letI := AddGroup.ofLeftAxioms add_assoc zero_add add_left_neg
  haveI add_comm : ∀ a b, a + b = b + a := by
    intro a b
    have h₁ : (1 + 1 : R) * (a + b) = a + (a + b) + b := by
      rw [left_distrib]
      simp only [right_distrib, one_mul, add_assoc]
    have h₂ : (1 + 1 : R) * (a + b) = a + (b + a) + b := by
      rw [right_distrib]
      simp only [left_distrib, one_mul, add_assoc]
    have := h₁.symm.trans h₂
    rwa [add_left_inj, add_right_inj] at this
  haveI zero_mul : ∀ a, (0 : R) * a = 0 := fun a => by
    have : 0 * a = 0 * a + 0 * a :=
      calc 0 * a = (0 + 0) * a := by rw [zero_add]
      _ = 0 * a + 0 * a := by rw [right_distrib]
    rwa [self_eq_add_right] at this
  haveI mul_zero : ∀ a, a * (0 : R) = 0 := fun a => by
    have : a * 0 = a * 0 + a * 0 :=
      calc a * 0 = a * (0 + 0) := by rw [zero_add]
      _ = a * 0 + a * 0 := by rw [left_distrib]
    rwa [self_eq_add_right] at this
  { add_comm := add_comm
    left_distrib := left_distrib
    right_distrib := right_distrib
    zero_mul := zero_mul
    mul_zero := mul_zero
    mul_assoc := mul_assoc
    one_mul := one_mul
    mul_one := mul_one
    add_left_neg := add_left_neg }

/-- Define a `CommRing` structure on a Type by proving a minimized set of axioms.
Note that this uses the default definitions for `npow`, `nsmul`, `zsmul` and `sub`
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinimalAxioms/Variant5076f808bae0071e0076c2f6e5bc91266cc47a0a9aaf8e531c1abc5827b34b39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinimalAxioms/Variant5076f808bae0071e0076c2f6e5bc91266cc47a0a9aaf8e531c1abc5827b34b39.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0856f9958fe3a3cf39bd80032f05bd759a82775c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
