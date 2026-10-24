# stdAddChar_conj_mul_orthogonality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9d05d28-b7b6-4dd2-9b38-fe8060d1f11c",
  "kind": "theorem",
  "lexical_name": "stdAddChar_conj_mul_orthogonality",
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
  "slug": "stdaddchar-conj-mul-orthogonality--7422cfad8e782809d349335f",
  "source": {
    "blob": "2014e78cd3486736ca7ad3be6001ba99a09f6798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 96,
    "path": "GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7422cfad8e782809d349335fc0ff98543b06069ff739f7cd30881f7104de03f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityFourierResidueVariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9d05d28-b7b6-4dd2-9b38-fe8060d1f11c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdAddChar_conj_mul_orthogonality
    (N : ℕ) [NeZero N]
    (a c : ZMod N) :
    (∑ k : ZMod N,
      conj (ZMod.stdAddChar (k * a)) *
        ZMod.stdAddChar (k * c)) =
      if a = c then (N : ℂ) else 0 := by
  classical
  have hconj (x : ZMod N) :
      conj (ZMod.stdAddChar x) = ZMod.stdAddChar (-x) := by
    rw [ZMod.stdAddChar_apply, ← Circle.coe_inv_eq_conj]
    simpa only [ZMod.stdAddChar_apply, Circle.coe_inv] using congrArg Subtype.val
      ((ZMod.toCircle (N := N)).map_neg_eq_inv x).symm
  simp_rw [hconj, ← AddChar.map_add_eq_mul]
  have hsum :=
    AddChar.sum_mulShift
      (ψ := ZMod.stdAddChar (N := N))
      (c - a) (ZMod.isPrimitive_stdAddChar N)
  convert hsum using 1
  · apply Finset.sum_congr rfl
    intro k _
    congr 1
    ring
  · by_cases hac : a = c
    · subst c; simp
    · have hca : c - a ≠ 0 := sub_ne_zero.mpr (Ne.symm hac)
      simp [hac, hca]

/-- Finite Parseval identity for the standard additive characters on `ZMod N`.
The transform convention uses the positive phase, which has the same norm as
Mathlib's bundled DFT convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityFourierResidueVariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2014e78cd3486736ca7ad3be6001ba99a09f6798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
