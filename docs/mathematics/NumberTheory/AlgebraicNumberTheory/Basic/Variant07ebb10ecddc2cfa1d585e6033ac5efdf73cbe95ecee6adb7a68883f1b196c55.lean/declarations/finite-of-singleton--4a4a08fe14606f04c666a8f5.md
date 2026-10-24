# finite_of_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7f93a90-cd51-99c3-6f13-514543b8e4b9",
  "kind": "theorem",
  "lexical_name": "finite_of_singleton",
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
  "slug": "finite-of-singleton--4a4a08fe14606f04c666a8f5",
  "source": {
    "blob": "0555b555990870f5bab2dac123a1dc46f5586630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 316,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a4a08fe14606f04c666a8f55624b6ceeb433af214b586bf174e0d76c10f80d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7f93a90-cd51-99c3-6f13-514543b8e4b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_singleton [IsDomain B] [h : IsCyclotomicExtension {n} A B] :
    Module.Finite A B := by
  classical
  rw [Module.finite_def, ← top_toSubmodule, ← ((iff_adjoin_eq_top _ _ _).1 h).2]
  refine' FG_adjoin_of_finite _ fun b hb => _
  · simp only [mem_singleton_iff, exists_eq_left]
    have : {b : B | b ^ (n : ℕ) = 1} = (nthRoots n (1 : B)).toFinset :=
      Set.ext fun x => ⟨fun h => by simpa using h, fun h => by simpa using h⟩
    rw [this]
    exact (nthRoots (↑n) 1).toFinset.finite_toSet
  · simp only [mem_singleton_iff, exists_eq_left, mem_setOf_eq] at hb
    refine' ⟨X ^ (n : ℕ) - 1, ⟨monic_X_pow_sub_C _ n.pos.ne.symm, by simp [hb]⟩⟩
#align is_cyclotomic_extension.finite_of_singleton IsCyclotomicExtension.finite_of_singleton

/-- If `S` is finite and `IsCyclotomicExtension S A B`, then `B` is a finite `A`-algebra. -/
protected
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0555b555990870f5bab2dac123a1dc46f5586630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
