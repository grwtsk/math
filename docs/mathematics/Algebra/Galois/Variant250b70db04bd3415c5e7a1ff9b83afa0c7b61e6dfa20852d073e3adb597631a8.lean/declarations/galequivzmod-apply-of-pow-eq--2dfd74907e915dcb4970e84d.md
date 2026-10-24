# galEquivZMod_apply_of_pow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc08a079-30a5-a4bf-ccf1-53663b0b58a1",
  "kind": "theorem",
  "lexical_name": "galEquivZMod_apply_of_pow_eq",
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
  "slug": "galequivzmod-apply-of-pow-eq--2dfd74907e915dcb4970e84d",
  "source": {
    "blob": "f0621d0eb3e646b0912432e86baa0800bb0bd0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 71,
    "path": "GRWTSK/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dfd74907e915dcb4970e84db9fd6401aad4b03054b6f00c5ac2d68e2607b9db",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc08a079-30a5-a4bf-ccf1-53663b0b58a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem galEquivZMod_apply_of_pow_eq (σ : Gal(K/ℚ)) {x : K} (hx : x ^ n = 1) :
    σ x = x ^ (galEquivZMod n K σ).val.val := by
  obtain ⟨a, -, rfl⟩ := (zeta_spec n ℚ K).eq_pow_of_pow_eq_one hx
  rw [map_pow, pow_right_comm, galEquivZMod, autEquivPow_apply, OneHom.toFun_eq_coe,
    MonoidHom.toOneHom_coe, IsPrimitiveRoot.autToPow_spec]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant250b70db04bd3415c5e7a1ff9b83afa0c7b61e6dfa20852d073e3adb597631a8.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0621d0eb3e646b0912432e86baa0800bb0bd0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
