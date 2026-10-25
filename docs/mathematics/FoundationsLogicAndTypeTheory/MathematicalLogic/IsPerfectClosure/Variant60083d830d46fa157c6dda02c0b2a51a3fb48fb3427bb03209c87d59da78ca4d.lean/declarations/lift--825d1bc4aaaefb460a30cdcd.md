# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfe61d8b463d7510278321f3266e2c5fa94234a418d7381cbd27875031c005fd",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift--825d1bc4aaaefb460a30cdcd",
  "source": {
    "blob": "aee1e920dcf4be19326fb72d198c8bd4e6cc0ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 318,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:825d1bc4aaaefb460a30cdcd8b6e2216461f04920da632cb92c06c111d487df3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfe61d8b463d7510278321f3266e2c5fa94234a418d7381cbd27875031c005fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift : L →+* M where
  toFun := liftAux i j p
  map_one' := by simp [liftAux_apply i j p 1 0 1 (by rw [one_pow, map_one])]
  map_mul' x1 x2 := by
    obtain ⟨n1, y1, h1⟩ := IsPRadical.pow_mem i p x1
    obtain ⟨n2, y2, h2⟩ := IsPRadical.pow_mem i p x2
    rw [liftAux_apply i j p _ _ _ h1, liftAux_apply i j p _ _ _ h2,
      liftAux_apply i j p (x1 * x2) (n1 + n2) (y1 ^ p ^ n2 * y2 ^ p ^ n1) (by rw [map_mul,
        map_pow, map_pow, h1, h2, ← pow_mul, ← pow_add, ← pow_mul, ← pow_add,
        add_comm n2, mul_pow]),
      map_mul, map_pow, map_pow, map_mul, ← iterateFrobeniusEquiv_def]
    nth_rw 1 [iterateFrobeniusEquiv_symm_add_apply]
    rw [RingEquiv.symm_apply_apply, add_comm n1, iterateFrobeniusEquiv_symm_add_apply,
      ← iterateFrobeniusEquiv_def, RingEquiv.symm_apply_apply]
  map_zero' := by simp [liftAux_apply i j p 0 0 0 (by rw [pow_zero, pow_one, map_zero])]
  map_add' x1 x2 := by
    obtain ⟨n1, y1, h1⟩ := IsPRadical.pow_mem i p x1
    obtain ⟨n2, y2, h2⟩ := IsPRadical.pow_mem i p x2
    rw [liftAux_apply i j p _ _ _ h1, liftAux_apply i j p _ _ _ h2,
      liftAux_apply i j p (x1 + x2) (n1 + n2) (y1 ^ p ^ n2 + y2 ^ p ^ n1) (by rw [map_add,
        map_pow, map_pow, h1, h2, ← pow_mul, ← pow_add, ← pow_mul, ← pow_add,
        add_comm n2, add_pow_expChar_pow]),
      map_add, map_pow, map_pow, map_add, ← iterateFrobeniusEquiv_def]
    nth_rw 1 [iterateFrobeniusEquiv_symm_add_apply]
    rw [RingEquiv.symm_apply_apply, add_comm n1, iterateFrobeniusEquiv_symm_add_apply,
      ← iterateFrobeniusEquiv_def, RingEquiv.symm_apply_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variant60083d830d46fa157c6dda02c0b2a51a3fb48fb3427bb03209c87d59da78ca4d.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee1e920dcf4be19326fb72d198c8bd4e6cc0ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
