# exceptionalKernelTwistedMertensPrefix_odd_eq_chiFour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9b4d7a0-e2a3-1a4b-fa37-56cbd01dd55d",
  "kind": "theorem",
  "lexical_name": "exceptionalKernelTwistedMertensPrefix_odd_eq_chiFour",
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
  "slug": "exceptionalkerneltwistedmertensprefix-odd-eq-chifour--9eb098cc205e8f5e7f2c065d",
  "source": {
    "blob": "c86320aa4fcaa58bb6a06247fa559e8be971d437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 165,
    "path": "GRWTSK/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eb098cc205e8f5e7f2c065d09103faeedb3f1899b6666458b173847482c2274",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9b4d7a0-e2a3-1a4b-fa37-56cbd01dd55d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exceptionalKernelTwistedMertensPrefix_odd_eq_chiFour
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    exceptionalKernelTwistedMertensPrefix b d 1 =
      chiFourTwistedMertensPrefix b := by
  rw [exceptionalKernelTwistedMertensPrefix_eq_neg_one_twist
    b d 1 hNonunit]
  unfold endpointParitySet chiFourTwistedMertensPrefix
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro u _hu
  by_cases hodd : u % 2 = 1
  · rw [if_pos hodd]
    have hchi :
        ((ZMod.χ₄ u : ℤ) : ℂ) = (-1 : ℂ) ^ (u / 2) := by
      exact_mod_cast (ZMod.χ₄_eq_neg_one_pow hodd)
    rw [hchi]
  · have heven : u % 2 = 0 := by
      have hmodlt : u % 2 < 2 := Nat.mod_lt _ (by norm_num)
      omega
    have hchi0 : ZMod.χ₄ u = 0 := by
      rw [ZMod.χ₄_nat_eq_if_mod_four]
      simp [heven]
    simp [hodd, hchi0]

/-- Ambient-scale square-root energy for the half-scale odd ordinary-Mertens
prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c86320aa4fcaa58bb6a06247fa559e8be971d437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
