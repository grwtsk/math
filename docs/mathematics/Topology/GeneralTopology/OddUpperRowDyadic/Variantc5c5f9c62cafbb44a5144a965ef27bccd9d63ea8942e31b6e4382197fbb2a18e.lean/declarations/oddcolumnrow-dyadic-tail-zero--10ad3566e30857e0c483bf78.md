# oddColumnRow_dyadic_tail_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de70ea22-bebd-58e3-8012-8c9f64e4c0f8",
  "kind": "theorem",
  "lexical_name": "oddColumnRow_dyadic_tail_zero",
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
  "slug": "oddcolumnrow-dyadic-tail-zero--10ad3566e30857e0c483bf78",
  "source": {
    "blob": "8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10ad3566e30857e0c483bf78063f85a336e583569ca72640e88f4f0306dc16e3",
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

Occurrence: `result:de70ea22-bebd-58e3-8012-8c9f64e4c0f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddColumnRow_dyadic_tail_zero (A : ℝ) (i : ℕ) (hi : 1 ≤ i) :
    oddColumnRow A (2^(Nat.clog 2 ⌈Real.exp (2*A)⌉₊)*i)=0 := by
  apply oddColumnRow_zero A _
  · have hp := Nat.one_le_pow (Nat.clog 2 ⌈Real.exp (2*A)⌉₊) 2 (by omega)
    nlinarith
  · have hp := Nat.le_pow_clog (by omega : 1<2) ⌈Real.exp (2*A)⌉₊
    have hpR : (⌈Real.exp (2*A)⌉₊:ℝ) ≤ ((2^(Nat.clog 2 ⌈Real.exp (2*A)⌉₊):ℕ):ℝ) := by
      exact_mod_cast hp
    have hx : Real.exp (2*A) ≤ (⌈Real.exp (2*A)⌉₊:ℝ) := Nat.le_ceil _
    have hiR : (1:ℝ) ≤ i := by exact_mod_cast hi
    push_cast
    push_cast at hpR
    nlinarith [(show (0:ℝ) ≤ (i:ℝ) from Nat.cast_nonneg i), (pow_nonneg (by norm_num : (0:ℝ)≤2)
      (Nat.clog 2 ⌈Real.exp (2*A)⌉₊))]

/-- A complete signed odd row becomes a finite sum of actual dyadic source channels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
