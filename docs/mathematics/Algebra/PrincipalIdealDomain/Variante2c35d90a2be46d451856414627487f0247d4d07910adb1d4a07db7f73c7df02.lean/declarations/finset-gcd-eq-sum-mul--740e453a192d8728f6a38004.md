# Finset.gcd_eq_sum_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f33423f76d0bb0ffbb6272b03f6409c225c10191",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e8c68a4-7936-576c-c0e3-624c325546a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7557151a-a0d1-6bbc-392c-040686fc9aac",
  "kind": "lemma",
  "lexical_name": "Finset.gcd_eq_sum_mul",
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
  "slug": "finset-gcd-eq-sum-mul--740e453a192d8728f6a38004",
  "source": {
    "blob": "f33423f76d0bb0ffbb6272b03f6409c225c10191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 233,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:740e453a192d8728f6a38004d6049cbb347389c8a667f30471a0f2d4a51ed611",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7557151a-a0d1-6bbc-392c-040686fc9aac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Finset.gcd_eq_sum_mul {α : Type*} [CommRing R] [IsBezout R] [NormalizedGCDMonoid R]
    (s : Finset α) (f : α → R) :
    ∃ g : α → R, s.gcd f = ∑ a ∈ s, f a * g a := by classical
  induction s using Finset.induction with
  | empty => simp
  | insert a s ha ih =>
    obtain ⟨x, y, hxy⟩ := IsBezout.gcd_eq_sum (f a) (s.gcd f)
    obtain ⟨u, hu⟩ := IsBezout.associated_gcd_gcd R (x := f a) (y := s.gcd f)
    rw [← hxy, add_mul, mul_comm x, mul_comm y] at hu
    obtain ⟨g, hg⟩ := ih
    refine ⟨Function.update (g · * (y * u)) a (x * u), ?_⟩
    rw [gcd_insert, sum_insert ha, ← hu, hg]
    simp only [Function.update_self, add_right_inj, sum_mul, mul_assoc]
    exact sum_congr rfl fun b hb ↦ congrArg (f b * ·) <|
      (Function.update_of_ne (show b ≠ a by grind) (x * u) (g · * (y * u))).symm

namespace IsPrime

open Submodule.IsPrincipal Ideal

-- TODO -- for a non-ID one could perhaps prove that if p < q are prime then q maximal;
-- 0 isn't prime in a non-ID PIR but the Krull dimension is still <= 1.
-- The below result follows from this, but we could also use the below result to
-- prove this (quotient out by p).
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f33423f76d0bb0ffbb6272b03f6409c225c10191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
