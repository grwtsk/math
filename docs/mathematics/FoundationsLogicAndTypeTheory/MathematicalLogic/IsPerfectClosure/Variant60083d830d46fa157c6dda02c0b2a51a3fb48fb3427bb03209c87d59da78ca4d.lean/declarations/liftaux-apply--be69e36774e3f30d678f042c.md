# liftAux_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a16667ac-1d35-8266-a70b-cabd5ebe62bf",
  "kind": "theorem",
  "lexical_name": "liftAux_apply",
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
  "slug": "liftaux-apply--be69e36774e3f30d678f042c",
  "source": {
    "blob": "aee1e920dcf4be19326fb72d198c8bd4e6cc0ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 296,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be69e36774e3f30d678f042c779bcaf57f8bb7e9af922aba50cb50eefe2e8fa5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a16667ac-1d35-8266-a70b-cabd5ebe62bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftAux_apply (x : L) (n : ℕ) (y : K) (h : i y = x ^ p ^ n) :
    liftAux i j p x = (iterateFrobeniusEquiv M p n).symm (j y) := by
  rw [liftAux]
  have h' := Classical.choose_spec (lift_aux i p x)
  set n' := (Classical.choose (lift_aux i p x)).1
  replace h := congr($(h.symm) ^ p ^ n')
  rw [← pow_mul, mul_comm, pow_mul, ← h', ← map_pow, ← map_pow, ← sub_eq_zero, ← map_sub,
    ← RingHom.mem_ker] at h
  obtain ⟨m, h⟩ := mem_pNilradical.1 (IsPRadical.ker_le i p h)
  refine (iterateFrobeniusEquiv M p (m + n + n')).injective ?_
  conv_lhs => rw [iterateFrobeniusEquiv_add_apply, RingEquiv.apply_symm_apply]
  rw [add_assoc, add_comm n n', ← add_assoc,
    iterateFrobeniusEquiv_add_apply (m := m + n'), RingEquiv.apply_symm_apply,
    iterateFrobeniusEquiv_def, iterateFrobeniusEquiv_def,
    ← sub_eq_zero, ← map_pow, ← map_pow, ← map_sub,
    add_comm m, add_comm m, pow_add, pow_mul, pow_add, pow_mul, ← sub_pow_expChar_pow, h, map_zero]

variable [ExpChar L p]

/-- If `i : K →+* L` and `j : K →+* M` are ring homomorphisms of characteristic `p` rings, such that
`i` is `p`-radical, and `M` is a perfect ring, then `PerfectRing.liftAux`
is a ring homomorphism. This is similar to `IsAlgClosed.lift` and `IsSepClosed.lift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee1e920dcf4be19326fb72d198c8bd4e6cc0ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
