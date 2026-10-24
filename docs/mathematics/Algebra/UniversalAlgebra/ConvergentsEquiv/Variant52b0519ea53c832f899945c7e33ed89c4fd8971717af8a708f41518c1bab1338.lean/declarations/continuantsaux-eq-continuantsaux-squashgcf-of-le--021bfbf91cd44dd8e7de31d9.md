# continuantsAux_eq_continuantsAux_squashGCF_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab64504f6d613732c16b49fd7d524195dda74f26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2233bee1-667d-4c40-0ec3-637ea663a712",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e59f0f2a-256e-4f81-d9ae-02b7783fe0ac",
  "kind": "theorem",
  "lexical_name": "continuantsAux_eq_continuantsAux_squashGCF_of_le",
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
  "slug": "continuantsaux-eq-continuantsaux-squashgcf-of-le--021bfbf91cd44dd8e7de31d9",
  "source": {
    "blob": "ab64504f6d613732c16b49fd7d524195dda74f26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 238,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:021bfbf91cd44dd8e7de31d9004e56a7e1f61afecc4ff7effdfa2137dcdaf572",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e59f0f2a-256e-4f81-d9ae-02b7783fe0ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuantsAux_eq_continuantsAux_squashGCF_of_le {m : ℕ} :
    m ≤ n → continuantsAux g m = (squashGCF g n).continuantsAux m :=
  Nat.strong_induction_on m
    (by
      clear m
      intro m IH m_le_n
      cases' m with m'
      · rfl
      · cases' n with n'
        · exact (m'.not_succ_le_zero m_le_n).elim
        -- 1 ≰ 0
        · cases' m' with m''
          · rfl
          · -- get some inequalities to instantiate the IH for m'' and m'' + 1
            have m'_lt_n : m'' + 1 < n' + 1 := m_le_n
            have succ_m''th_conts_aux_eq := IH (m'' + 1) (lt_add_one (m'' + 1)) m'_lt_n.le
            have : m'' < m'' + 2 := lt_add_of_pos_right m'' zero_lt_two
            have m''th_conts_aux_eq := IH m'' this (le_trans this.le m_le_n)
            have : (squashGCF g (n' + 1)).s.get? m'' = g.s.get? m'' :=
              squashGCF_nth_of_lt (Nat.succ_lt_succ_iff.mp m'_lt_n)
            simp [continuantsAux, succ_m''th_conts_aux_eq, m''th_conts_aux_eq, this])
#align generalized_continued_fraction.continuants_aux_eq_continuants_aux_squash_gcf_of_le GeneralizedContinuedFraction.continuantsAux_eq_continuantsAux_squashGCF_of_le

end WithDivisionRing

/-- The convergents coincide in the expected way at the squashed position if the partial denominator
at the squashed position is not zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant52b0519ea53c832f899945c7e33ed89c4fd8971717af8a708f41518c1bab1338.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab64504f6d613732c16b49fd7d524195dda74f26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
