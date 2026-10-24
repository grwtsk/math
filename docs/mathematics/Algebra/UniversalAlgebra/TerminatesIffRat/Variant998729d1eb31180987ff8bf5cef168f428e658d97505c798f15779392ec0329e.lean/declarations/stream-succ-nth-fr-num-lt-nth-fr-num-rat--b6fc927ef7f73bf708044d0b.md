# stream_succ_nth_fr_num_lt_nth_fr_num_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7a662e9-bc5f-484e-2a5d-5d2f5fa50aa8",
  "kind": "theorem",
  "lexical_name": "stream_succ_nth_fr_num_lt_nth_fr_num_rat",
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
  "slug": "stream-succ-nth-fr-num-lt-nth-fr-num-rat--b6fc927ef7f73bf708044d0b",
  "source": {
    "blob": "27f5cbb5311c7f47c0f7ffce8c5458d3ad1fee57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 260,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6fc927ef7f73bf708044d0ba01ccead34b87c590c16a56d43e23f6632781e82",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7a662e9-bc5f-484e-2a5d-5d2f5fa50aa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stream_succ_nth_fr_num_lt_nth_fr_num_rat {ifp_n ifp_succ_n : IntFractPair ℚ}
    (stream_nth_eq : IntFractPair.stream q n = some ifp_n)
    (stream_succ_nth_eq : IntFractPair.stream q (n + 1) = some ifp_succ_n) :
    ifp_succ_n.fr.num < ifp_n.fr.num := by
  obtain ⟨ifp_n', stream_nth_eq', ifp_n_fract_ne_zero, IntFractPair.of_eq_ifp_succ_n⟩ :
    ∃ ifp_n',
      IntFractPair.stream q n = some ifp_n' ∧
        ifp_n'.fr ≠ 0 ∧ IntFractPair.of ifp_n'.fr⁻¹ = ifp_succ_n :=
    succ_nth_stream_eq_some_iff.mp stream_succ_nth_eq
  have : ifp_n = ifp_n' := by injection Eq.trans stream_nth_eq.symm stream_nth_eq'
  cases this
  rw [← IntFractPair.of_eq_ifp_succ_n]
  obtain ⟨zero_le_ifp_n_fract, _⟩ := nth_stream_fr_nonneg_lt_one stream_nth_eq
  have : 0 < ifp_n.fr := lt_of_le_of_ne zero_le_ifp_n_fract <| ifp_n_fract_ne_zero.symm
  exact of_inv_fr_num_lt_num_of_pos this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant998729d1eb31180987ff8bf5cef168f428e658d97505c798f15779392ec0329e.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27f5cbb5311c7f47c0f7ffce8c5458d3ad1fee57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
