# coe_nat_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c827a4c5-7636-a2ab-d464-cdb3756985fc",
  "kind": "theorem",
  "lexical_name": "coe_nat_mod",
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
  "slug": "coe-nat-mod--d0ff2d82b689a13981b0b9df",
  "source": {
    "blob": "4f38e21097d0c09f66c23eab6b82f00a091aec65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 262,
    "path": "GRWTSK/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0ff2d82b689a13981b0b9df84b189b1e695f4c3ab3bbdc30c499d3ae001fee0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c827a4c5-7636-a2ab-d464-cdb3756985fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] theorem coe_nat_mod (m n : ℕ) : (↑(m % n) : ℤ) = ↑m % ↑n := rfl
#align int.coe_nat_mod Int.coe_nat_mod

#align int.neg_succ_of_nat_mod Int.negSucc_emod
#align int.mod_neg Int.mod_negₓ -- int div alignment
#align int.zero_mod Int.zero_modₓ -- int div alignment
#align int.mod_zero Int.mod_zeroₓ -- int div alignment
#align int.mod_one Int.mod_oneₓ -- int div alignment
#align int.mod_eq_of_lt Int.emod_eq_of_lt -- int div alignment
#align int.mod_add_div Int.emod_add_ediv -- int div alignment
#align int.div_add_mod Int.div_add_modₓ -- int div alignment
#align int.mod_add_div' Int.mod_add_div'ₓ -- int div alignment
#align int.div_add_mod' Int.div_add_mod'ₓ -- int div alignment
#align int.mod_def Int.mod_defₓ -- int div alignment

/-! ### properties of `/` and `%` -/

#align int.mul_div_mul_of_pos Int.mul_ediv_mul_of_pos
#align int.mul_div_mul_of_pos_left Int.mul_ediv_mul_of_pos_left
#align int.mul_mod_mul_of_pos Int.mul_emod_mul_of_pos
#align int.mul_div_cancel_of_mod_eq_zero Int.mul_div_cancel_of_mod_eq_zeroₓ -- int div alignment
#align int.div_mul_cancel_of_mod_eq_zero Int.div_mul_cancel_of_mod_eq_zeroₓ -- int div alignment

#align int.nat_abs_sign Int.natAbs_sign
#align int.nat_abs_sign_of_nonzero Int.natAbs_sign_of_nonzero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f38e21097d0c09f66c23eab6b82f00a091aec65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
