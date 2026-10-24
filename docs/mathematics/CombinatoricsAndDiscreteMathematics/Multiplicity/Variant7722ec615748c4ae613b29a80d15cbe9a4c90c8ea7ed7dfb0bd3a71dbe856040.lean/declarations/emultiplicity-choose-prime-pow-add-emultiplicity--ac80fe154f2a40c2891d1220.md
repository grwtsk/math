# emultiplicity_choose_prime_pow_add_emultiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d02553a9-a117-f6eb-0b9d-3cc96a2a02ab",
  "kind": "theorem",
  "lexical_name": "emultiplicity_choose_prime_pow_add_emultiplicity",
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
  "slug": "emultiplicity-choose-prime-pow-add-emultiplicity--ac80fe154f2a40c2891d1220",
  "source": {
    "blob": "2fe5ba89c0076f5a7140e285b5ae6711366e732c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 237,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac80fe154f2a40c2891d1220c875f2cd0f0aca9ed7ba9e065635ba092548845d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d02553a9-a117-f6eb-0b9d-3cc96a2a02ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_choose_prime_pow_add_emultiplicity (hp : p.Prime) (hkn : k ≤ p ^ n)
    (hk0 : k ≠ 0) : emultiplicity p (choose (p ^ n) k) + emultiplicity p k = n :=
  le_antisymm
    (by
      have hdisj :
        Disjoint {i ∈ Ico 1 n.succ | p ^ i ≤ k % p ^ i + (p ^ n - k) % p ^ i}
          {i ∈ Ico 1 n.succ | p ^ i ∣ k} := by
        simp +contextual [disjoint_right, *, dvd_iff_mod_eq_zero,
          Nat.mod_lt _ (pow_pos hp.pos _)]
      rw [emultiplicity_choose hp hkn (lt_succ_self _),
        emultiplicity_eq_card_pow_dvd (ne_of_gt hp.one_lt) hk0.bot_lt
          (lt_succ_of_le (log_mono_right hkn)),
        ← Nat.cast_add]
      apply WithTop.coe_mono
      rw [log_pow hp.one_lt, ← card_union_of_disjoint hdisj, filter_union_right]
      have filter_le_Ico := (Ico 1 n.succ).card_filter_le
        fun x => p ^ x ≤ k % p ^ x + (p ^ n - k) % p ^ x ∨ p ^ x ∣ k
      rwa [card_Ico 1 n.succ] at filter_le_Ico)
    (by rw [← hp.emultiplicity_pow_self]; exact emultiplicity_le_emultiplicity_choose_add hp _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiplicity/Variant7722ec615748c4ae613b29a80d15cbe9a4c90c8ea7ed7dfb0bd3a71dbe856040.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fe5ba89c0076f5a7140e285b5ae6711366e732c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
