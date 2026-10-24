# completeLowerTypeIIShellPairs_eq_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dba321fe-a26d-2596-84e8-51f5668f5201",
  "kind": "theorem",
  "lexical_name": "completeLowerTypeIIShellPairs_eq_prefix",
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
  "slug": "completelowertypeiishellpairs-eq-prefix--00226914867760fce058c9e1",
  "source": {
    "blob": "d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00226914867760fce058c9e1d8b9059d835b39199e6bebaa5b7da403d1586721",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dba321fe-a26d-2596-84e8-51f5668f5201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeLowerTypeIIShellPairs_eq_prefix (N q : ℕ)
    (hmaster : 2 ^ q ≤ 2 * N) :
    completeLowerTypeIIShellPairs N q =
      effectiveTypeIIPrefixPairs N (2 ^ q) := by
  induction q with
  | zero =>
      rw [completeLowerTypeIIShellPairs_zero]
      ext pair
      constructor
      · simp
      · intro hpair
        have hp := mem_effectiveTypeIIPrefixPairs_iff.mp hpair
        have hcut := two_le_vaughanFourthRootCutoff N
        have hm : 2 < pair.1.1 := hcut.trans_lt hp.1
        have hk : 2 < pair.2.1 := hcut.trans_lt hp.2.1
        have hprod : 1 < pair.1.1 * pair.2.1 :=
          (show 1 < pair.1.1 by omega).trans_le
            (Nat.le_mul_of_pos_right pair.1.1 (by omega))
        norm_num at hp
        omega
  | succ q ih =>
      rw [completeLowerTypeIIShellPairs_succ]
      have hprev : 2 ^ q ≤ 2 * N := by
        exact (Nat.pow_le_pow_right (by decide) (Nat.le_succ q)).trans hmaster
      rw [ih hprev]
      ext pair
      simp only [Finset.mem_union, mem_effectiveTypeIIPrefixPairs_iff,
        mem_effectiveTypeIIShellPairs_iff]
      constructor
      · intro h
        rcases h with h | h
        · exact ⟨h.1, h.2.1,
            h.2.2.trans (Nat.pow_le_pow_right (by decide) (Nat.le_succ q))⟩
        · exact ⟨h.1, h.2.1, h.2.2.2.1⟩
      · intro h
        by_cases hp : pair.1.1 * pair.2.1 ≤ 2 ^ q
        · exact Or.inl ⟨h.1, h.2.1, hp⟩
        · exact Or.inr ⟨h.1, h.2.1, by omega, h.2.2,
            h.2.2.trans hmaster⟩

/-- Exact pair-set decomposition of a prefix endpoint lying in shell `q`:
complete lower shells plus the current partial shell. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
