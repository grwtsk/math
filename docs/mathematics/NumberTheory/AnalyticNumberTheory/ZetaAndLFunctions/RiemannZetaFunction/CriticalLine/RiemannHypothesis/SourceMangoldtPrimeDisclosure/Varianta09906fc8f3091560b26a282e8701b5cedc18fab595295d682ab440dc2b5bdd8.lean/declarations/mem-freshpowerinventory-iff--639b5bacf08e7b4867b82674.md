# mem_freshPowerInventory_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3bc25b6-2d70-3e42-badc-c1740632d9ed",
  "kind": "theorem",
  "lexical_name": "mem_freshPowerInventory_iff",
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
  "slug": "mem-freshpowerinventory-iff--639b5bacf08e7b4867b82674",
  "source": {
    "blob": "f1380432d8b3683c10ff919a1c66c57337b45188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:639b5bacf08e7b4867b82674af22eb7031f3e5c9b1263ceee6d60a80454644c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3bc25b6-2d70-3e42-badc-c1740632d9ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_freshPowerInventory_iff (I : Finset ℕ) (p n : ℕ) (hp : p.Prime) :
    n ∈ freshPowerInventory I p ↔ n ∈ I ∧ ∃ k : ℕ, 0 < k ∧ p ^ k = n := by
  classical
  unfold freshPowerInventory
  simp only [Finset.mem_filter]
  constructor
  · rintro ⟨hn, hpp, hmin⟩
    obtain ⟨r, k, hr, hk, heq⟩ := (isPrimePow_nat_iff n).mp hpp
    have hrp : r = p := by
      rw [← heq, hr.pow_minFac hk.ne'] at hmin
      exact hmin
    subst r
    exact ⟨hn, k, hk, heq⟩
  · rintro ⟨hn, k, hk, rfl⟩
    exact ⟨hn, (isPrimePow_nat_iff _).mpr ⟨p, k, hp, hk, rfl⟩,
      hp.pow_minFac hk.ne'⟩

/-- Retained powers keep the existing actual log-prime coefficient even when mu vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtPrimeDisclosure/Varianta09906fc8f3091560b26a282e8701b5cedc18fab595295d682ab440dc2b5bdd8.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1380432d8b3683c10ff919a1c66c57337b45188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
