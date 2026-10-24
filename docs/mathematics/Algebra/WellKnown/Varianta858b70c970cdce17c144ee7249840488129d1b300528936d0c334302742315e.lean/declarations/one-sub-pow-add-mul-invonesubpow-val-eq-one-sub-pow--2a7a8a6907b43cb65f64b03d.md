# one_sub_pow_add_mul_invOneSubPow_val_eq_one_sub_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aec9394-f05c-e00e-4d48-4f950af7420e",
  "kind": "theorem",
  "lexical_name": "one_sub_pow_add_mul_invOneSubPow_val_eq_one_sub_pow",
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
  "slug": "one-sub-pow-add-mul-invonesubpow-val-eq-one-sub-pow--2a7a8a6907b43cb65f64b03d",
  "source": {
    "blob": "043cf0c7ea739cb009457afbcf60057db0f8a359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 188,
    "path": "GRWTSK/Algebra/WellKnown/Varianta858b70c970cdce17c144ee7249840488129d1b300528936d0c334302742315e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a7a8a6907b43cb65f64b03d3a01fb2cd29a1dac5302fa1bd7b1685d1d4b85e8",
  "verification": {
    "reference": "docs/verification/Algebra/WellKnown/Varianta858b70c970cdce17c144ee7249840488129d1b300528936d0c334302742315e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aec9394-f05c-e00e-4d48-4f950af7420e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_pow_add_mul_invOneSubPow_val_eq_one_sub_pow (e : ℕ) :
    (1 - X) ^ (d + e) * (invOneSubPow S e).val = (1 - X) ^ d := by
  simp [pow_add, mul_assoc, ← invOneSubPow_inv_eq_one_sub_pow S e]

end invOneSubPow

section Field

variable (A A' : Type*) [Ring A] [Ring A'] [Algebra ℚ A] [Algebra ℚ A']

open Nat

/-- Power series for the sine function at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WellKnown/Varianta858b70c970cdce17c144ee7249840488129d1b300528936d0c334302742315e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WellKnown/Varianta858b70c970cdce17c144ee7249840488129d1b300528936d0c334302742315e.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `043cf0c7ea739cb009457afbcf60057db0f8a359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
