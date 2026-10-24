# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09742b303368baa804c0dc7c0ca8c3f0656c89e7e6e004eacd52f2143fbed5dc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e26bb86c30150af5d7ad91ed",
  "source": {
    "blob": "98a4886617f85178009de177e63ea4abb663c888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 513,
    "path": "GRWTSK/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e26bb86c30150af5d7ad91ed0a590e8e6c83f71e87a84960c40f882b414d92ef",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09742b303368baa804c0dc7c0ca8c3f0656c89e7e6e004eacd52f2143fbed5dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Field (QuadraticAlgebra K a b) where
  inv_zero := by ext <;> simp
  mul_inv_cancel z hz := by
    rw [ne_eq, ← norm_eq_zero_iff_eq_zero] at hz
    simp only [inv_def, Algebra.mul_smul_comm]
    rw [← C_mul_eq_smul, C_eq_algebraMap, ← algebraMap_norm_eq_mul_star, ← map_mul,
      inv_mul_cancel₀ hz, map_one]
  nnratCast_def q := by ext <;> simp [sq]; field_simp; simp [NNRat.cast_def]
  ratCast_def q := by ext <;> simp [sq]; field_simp; simp [Rat.cast_def]
  nnqsmul := (· • ·)
  qsmul := (· • ·)
  nnqsmul_def q x := by ext <;> simp [NNRat.smul_def]
  qsmul_def q x := by ext <;> simp [Rat.smul_def]

/-- When `b = 0`, the `Field` instance is inferable from `¬ IsSquare a` alone: it provides the
no-root condition `∀ r, r ^ 2 ≠ a + 0 * r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantd6e67ce68c3fde0fb4d96412d41a97abf3cc2e988027f2075154e014789688ae.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98a4886617f85178009de177e63ea4abb663c888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
