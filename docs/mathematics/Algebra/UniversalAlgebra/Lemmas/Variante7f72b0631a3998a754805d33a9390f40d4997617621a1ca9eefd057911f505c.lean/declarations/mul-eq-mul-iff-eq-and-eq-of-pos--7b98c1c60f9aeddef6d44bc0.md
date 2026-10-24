# mul_eq_mul_iff_eq_and_eq_of_pos'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cb8b5cc-d3aa-cd25-1251-0968c3fb3725",
  "kind": "theorem",
  "lexical_name": "mul_eq_mul_iff_eq_and_eq_of_pos'",
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
  "slug": "mul-eq-mul-iff-eq-and-eq-of-pos--7b98c1c60f9aeddef6d44bc0",
  "source": {
    "blob": "3375d2c9053676133890d003c030ae10b67a3b57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 547,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b98c1c60f9aeddef6d44bc0e46fc0fec20616b58ceb77fe6fa49c51641642c6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cb8b5cc-d3aa-cd25-1251-0968c3fb3725`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 547–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_mul_iff_eq_and_eq_of_pos' [PosMulStrictMono α] [MulPosStrictMono α] [PosMulMonoRev α]
    [MulPosMonoRev α] (hac : a ≤ b) (hbd : c ≤ d) (b0 : 0 < b) (c0 : 0 < c) :
    a * c = b * d ↔ a = b ∧ c = d := by
  refine' ⟨fun h => _, fun h => congr_arg₂ (· * ·) h.1 h.2⟩
  rcases hac.eq_or_lt with (rfl | hac)
  · exact ⟨rfl, (mul_left_cancel_iff_of_pos b0).mp h⟩
  rcases eq_or_lt_of_le hbd with (rfl | hbd)
  · exact ⟨(mul_right_cancel_iff_of_pos c0).mp h, rfl⟩
  exact ((mul_lt_mul_of_lt_of_lt' hac hbd b0 c0).ne h).elim
#align mul_eq_mul_iff_eq_and_eq_of_pos' mul_eq_mul_iff_eq_and_eq_of_pos'

end PartialOrder

section LinearOrder

variable [LinearOrder α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean#L547).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3375d2c9053676133890d003c030ae10b67a3b57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
