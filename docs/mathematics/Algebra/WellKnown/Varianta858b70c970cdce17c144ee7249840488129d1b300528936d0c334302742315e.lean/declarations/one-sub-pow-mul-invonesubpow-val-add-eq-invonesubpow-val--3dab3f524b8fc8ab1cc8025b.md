# one_sub_pow_mul_invOneSubPow_val_add_eq_invOneSubPow_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a90ab628-4b33-d4f1-cbbe-54249e641e72",
  "kind": "theorem",
  "lexical_name": "one_sub_pow_mul_invOneSubPow_val_add_eq_invOneSubPow_val",
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
  "slug": "one-sub-pow-mul-invonesubpow-val-add-eq-invonesubpow-val--3dab3f524b8fc8ab1cc8025b",
  "source": {
    "blob": "043cf0c7ea739cb009457afbcf60057db0f8a359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 184,
    "path": "GRWTSK/Algebra/WellKnown/Varianta858b70c970cdce17c144ee7249840488129d1b300528936d0c334302742315e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dab3f524b8fc8ab1cc8025b04a3adf1407653e7fe2b9355b249c95b98a346ed",
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

Occurrence: `result:a90ab628-4b33-d4f1-cbbe-54249e641e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_pow_mul_invOneSubPow_val_add_eq_invOneSubPow_val (e : ℕ) :
    (1 - X) ^ e * (invOneSubPow S (d + e)).val = (invOneSubPow S d).val := by
  simp [invOneSubPow_add, Units.val_mul, mul_comm, mul_assoc, ← invOneSubPow_inv_eq_one_sub_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WellKnown/Varianta858b70c970cdce17c144ee7249840488129d1b300528936d0c334302742315e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WellKnown/Varianta858b70c970cdce17c144ee7249840488129d1b300528936d0c334302742315e.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `043cf0c7ea739cb009457afbcf60057db0f8a359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
