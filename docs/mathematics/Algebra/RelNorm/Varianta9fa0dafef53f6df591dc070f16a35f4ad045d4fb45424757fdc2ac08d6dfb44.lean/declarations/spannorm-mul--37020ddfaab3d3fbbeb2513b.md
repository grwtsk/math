# spanNorm_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a5d4090-5045-3a0b-6dd5-69911e48b929",
  "kind": "theorem",
  "lexical_name": "spanNorm_mul",
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
  "slug": "spannorm-mul--37020ddfaab3d3fbbeb2513b",
  "source": {
    "blob": "9761dba926e6906cae2c5d32b53f40c0eb1858f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 207,
    "path": "GRWTSK/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37020ddfaab3d3fbbeb2513b2da505b86a0977d098ae2e90669a0dec55ef24db",
  "verification": {
    "reference": "docs/verification/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a5d4090-5045-3a0b-6dd5-69911e48b929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spanNorm_mul [IsDedekindDomain R] [IsDedekindDomain S] (I J : Ideal S) :
    spanNorm R (I * J) = spanNorm R I * spanNorm R J := by
  nontriviality R
  cases subsingleton_or_nontrivial S
  · have : ∀ I : Ideal S, I = ⊤ := fun I ↦ Subsingleton.elim I ⊤
    simp [this I, this J]
  refine eq_of_localization_maximal (fun P hP ↦ ?_)
  by_cases hP0 : P = ⊥
  · subst hP0
    rw [spanNorm_mul_of_bot_or_top]
    intro I
    exact or_iff_not_imp_right.mpr fun hI ↦ (hP.eq_of_le hI bot_le).symm
  have : NeZero P := ⟨hP0⟩
  let P' := Algebra.algebraMapSubmonoid S P.primeCompl
  simp only [Ideal.map_mul, ← spanIntNorm_localization (R := R) (Sₘ := Localization P')
    _ _ P.primeCompl_le_nonZeroDivisors]
  rw [← (I.map _).span_singleton_generator, ← (J.map _).span_singleton_generator,
    span_singleton_mul_span_singleton, spanNorm_singleton, spanNorm_singleton,
    spanNorm_singleton, span_singleton_mul_span_singleton, map_mul]

section spanNorm_spanNorm

variable (T : Type*) [CommRing T] [IsDomain T] [IsIntegrallyClosed T] [Algebra R T] [Algebra T S]
  [Module.Finite R T] [Module.Finite T S] [IsTorsionFree R T] [IsTorsionFree T S]
  [IsScalarTower R T S]

open _root_.Algebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9761dba926e6906cae2c5d32b53f40c0eb1858f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
