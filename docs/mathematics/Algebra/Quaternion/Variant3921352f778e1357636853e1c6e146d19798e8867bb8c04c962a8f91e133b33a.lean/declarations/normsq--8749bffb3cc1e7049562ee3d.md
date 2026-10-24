# normSq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7f660e99312209f4fdfcd3c94a2f54736ffe63a9b5485730b2ea49363e686bc",
  "kind": "def",
  "lexical_name": "normSq",
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
  "slug": "normsq--8749bffb3cc1e7049562ee3d",
  "source": {
    "blob": "6399085b68d33d3f4050d8629104d2ca0843438b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1202,
    "line": 1194,
    "path": "GRWTSK/Algebra/Quaternion/Variant3921352f778e1357636853e1c6e146d19798e8867bb8c04c962a8f91e133b33a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8749bffb3cc1e7049562ee3d521e13be54e40dbcbf1fc8e289425b51eeccd5ba",
  "verification": {
    "reference": "docs/verification/Algebra/Quaternion/Variant3921352f778e1357636853e1c6e146d19798e8867bb8c04c962a8f91e133b33a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7f660e99312209f4fdfcd3c94a2f54736ffe63a9b5485730b2ea49363e686bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1194–1202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normSq : ℍ[R] →*₀ R where
  toFun a := (a * star a).re
  map_zero' := by simp only [star_zero, zero_mul, zero_re]
  map_one' := by simp only [star_one, one_mul, one_re]
  map_mul' x y := coe_injective <| by
    conv_lhs => rw [← mul_star_eq_coe, star_mul, mul_assoc, ← mul_assoc y, y.mul_star_eq_coe,
      coe_commutes, ← mul_assoc, x.mul_star_eq_coe, ← coe_mul]
#align quaternion.norm_sq Quaternion.normSq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quaternion/Variant3921352f778e1357636853e1c6e146d19798e8867bb8c04c962a8f91e133b33a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quaternion/Variant3921352f778e1357636853e1c6e146d19798e8867bb8c04c962a8f91e133b33a.lean#L1194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6399085b68d33d3f4050d8629104d2ca0843438b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
