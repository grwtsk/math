# closureCommSemiringOfComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a8747536ec5aa4d9fa4f1a78aaeadf967cd3653fcccfef55274fa7c48dad448",
  "kind": "def",
  "lexical_name": "closureCommSemiringOfComm",
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
  "slug": "closurecommsemiringofcomm--07fe42e725b779d05114e9a3",
  "source": {
    "blob": "3a4cac017cfb69c2edf204c63963e7d297b6563c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1429,
    "line": 1407,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07fe42e725b779d05114e9a3c89b9182337c8127c27e3bb004c308953998b908",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a8747536ec5aa4d9fa4f1a78aaeadf967cd3653fcccfef55274fa7c48dad448`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1407–1429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closureCommSemiringOfComm {s : Set R'} (hcomm : ∀ a ∈ s, ∀ b ∈ s, a * b = b * a) :
    CommSemiring (closure s) :=
  { (closure s).toSemiring with
    mul_comm := fun x y => by
      ext
      simp only [Subsemiring.coe_mul]
      refine'
        closure_induction₂ x.prop y.prop hcomm (fun x => by simp only [zero_mul, mul_zero])
          (fun x => by simp only [zero_mul, mul_zero]) (fun x => by simp only [one_mul, mul_one])
          (fun x => by simp only [one_mul, mul_one])
          (fun x y z h₁ h₂ => by simp only [add_mul, mul_add, h₁, h₂])
          (fun x y z h₁ h₂ => by simp only [add_mul, mul_add, h₁, h₂])
          (fun x y z h₁ h₂ => by rw [mul_assoc, h₂, ← mul_assoc, h₁, mul_assoc]) fun x y z h₁ h₂ =>
          by rw [← mul_assoc, h₁, mul_assoc, h₂, ← mul_assoc] }
#align subsemiring.closure_comm_semiring_of_comm Subsemiring.closureCommSemiringOfComm

end Subsemiring

end Actions

-- While this definition is not about `Subsemiring`s, this is the earliest we have
-- both `StrictOrderedSemiring` and `Submonoid` available.
/-- Submonoid of positive elements of an ordered semiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean#L1407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a4cac017cfb69c2edf204c63963e7d297b6563c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
