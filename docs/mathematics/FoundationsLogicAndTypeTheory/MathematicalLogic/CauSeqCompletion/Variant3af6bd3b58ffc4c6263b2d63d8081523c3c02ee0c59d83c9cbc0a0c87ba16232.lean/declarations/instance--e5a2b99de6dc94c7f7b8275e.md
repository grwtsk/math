# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfe94a1da89cb8935123ebf9174acfbaed9413b2daa2ffdcabedfaaa247e0c28",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e5a2b99de6dc94c7f7b8275e",
  "source": {
    "blob": "ce4f03fcb51b1db8cbf63f2eae8a674b17f33bdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5a2b99de6dc94c7f7b8275ef4d559dcee8ab819fc8690c154c0b454e201bfc6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfe94a1da89cb8935123ebf9174acfbaed9413b2daa2ffdcabedfaaa247e0c28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : Inv (Cauchy abv) :=
  ⟨fun x =>
    (Quotient.liftOn x fun f => mk <| if h : LimZero f then 0 else inv f h) fun f g fg => by
      have := limZero_congr fg
      by_cases hf : LimZero f
      · simp [hf, this.1 hf, Setoid.refl]
      · have hg := mt this.2 hf
        simp [hf, hg]
        have If : mk (inv f hf) * mk f = 1 := mk_eq.2 (inv_mul_cancel hf)
        have Ig : mk (inv g hg) * mk g = 1 := mk_eq.2 (inv_mul_cancel hg)
        have Ig' : mk g * mk (inv g hg) = 1 := mk_eq.2 (mul_inv_cancel hg)
        rw [mk_eq.2 fg, ← Ig] at If
        rw [← mul_one (mk (inv f hf)), ← Ig', ← mul_assoc, If, mul_assoc, Ig', mul_one]⟩

-- porting note: simp can prove this
-- @[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4f03fcb51b1db8cbf63f2eae8a674b17f33bdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
