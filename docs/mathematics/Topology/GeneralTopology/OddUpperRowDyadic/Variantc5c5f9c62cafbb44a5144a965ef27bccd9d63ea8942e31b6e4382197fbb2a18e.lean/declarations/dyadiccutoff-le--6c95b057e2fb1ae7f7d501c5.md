# dyadicCutoff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fee0369c-cad4-c1a6-d509-69f90667faed",
  "kind": "theorem",
  "lexical_name": "dyadicCutoff_le",
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
  "slug": "dyadiccutoff-le--6c95b057e2fb1ae7f7d501c5",
  "source": {
    "blob": "8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c95b057e2fb1ae7f7d501c5c0521118990e0cd4e6460c3dbe7cf2d9db59a33d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fee0369c-cad4-c1a6-d509-69f90667faed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicCutoff_le (A : ℝ) :
    Nat.clog 2 ⌈Real.exp (2*A)⌉₊ ≤ ⌈2*A / Real.log 2⌉₊ := by
  apply (Nat.clog_le_iff_le_pow (by omega : 1<2)).mpr
  apply Nat.ceil_le.mpr
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hc : 2*A / Real.log 2 ≤ (⌈2*A / Real.log 2⌉₊:ℝ) := Nat.le_ceil _
  have hx : 2*A ≤ (⌈2*A / Real.log 2⌉₊:ℝ)*Real.log 2 := (div_le_iff₀ hl).mp hc
  have he := Real.exp_le_exp.mpr hx
  rw [Real.exp_nat_mul, Real.exp_log (by norm_num)] at he
  exact_mod_cast he

/-- A finite odd-column sum retains its strict lower and closed upper boundary pieces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
