# continuantsAux_eq_continuantsAux_squashGCF_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d461c75f-ce64-c353-a07a-d921f7d309fc",
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
  "slug": "continuantsaux-eq-continuantsaux-squashgcf-of-le--69315b9142020ca82c886721",
  "source": {
    "blob": "d5ed4fb7e01203f3b2da61b269065c8972755a0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 246,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69315b9142020ca82c88672189da6009fc43f55776a7a31ea34c7f3d98836d33",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d461c75f-ce64-c353-a07a-d921f7d309fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–272.

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

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ed4fb7e01203f3b2da61b269065c8972755a0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
