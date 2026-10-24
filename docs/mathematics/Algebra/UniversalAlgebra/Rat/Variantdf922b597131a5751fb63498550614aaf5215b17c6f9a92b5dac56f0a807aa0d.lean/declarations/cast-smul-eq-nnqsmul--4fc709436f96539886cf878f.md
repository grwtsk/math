# cast_smul_eq_nnqsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6089117c-37bd-34b5-6d37-e323c619ccef",
  "kind": "lemma",
  "lexical_name": "cast_smul_eq_nnqsmul",
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
  "slug": "cast-smul-eq-nnqsmul--4fc709436f96539886cf878f",
  "source": {
    "blob": "40fd2389f63830435f60b644c4d21f6c93e4f41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variantdf922b597131a5751fb63498550614aaf5215b17c6f9a92b5dac56f0a807aa0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fc709436f96539886cf878f36167fa7d7aa23623357d550de68b749cefd449d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Rat/Variantdf922b597131a5751fb63498550614aaf5215b17c6f9a92b5dac56f0a807aa0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6089117c-37bd-34b5-6d37-e323c619ccef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cast_smul_eq_nnqsmul [Module R S] (q : ℚ≥0) (a : S) : (q : R) • a = q • a := by
  refine MulAction.injective₀ (G₀ := ℚ≥0) (Nat.cast_ne_zero.2 q.den_pos.ne') ?_
  dsimp
  rw [← mul_smul, den_mul_eq_num, Nat.cast_smul_eq_nsmul, Nat.cast_smul_eq_nsmul, ← smul_assoc,
    nsmul_eq_mul q.den, ← cast_natCast, ← cast_mul, den_mul_eq_num, cast_natCast,
    Nat.cast_smul_eq_nsmul]

end Semiring

section DivisionSemiring
variable [DivisionSemiring S] [CharZero S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Rat/Variantdf922b597131a5751fb63498550614aaf5215b17c6f9a92b5dac56f0a807aa0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Rat/Variantdf922b597131a5751fb63498550614aaf5215b17c6f9a92b5dac56f0a807aa0d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fd2389f63830435f60b644c4d21f6c93e4f41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
