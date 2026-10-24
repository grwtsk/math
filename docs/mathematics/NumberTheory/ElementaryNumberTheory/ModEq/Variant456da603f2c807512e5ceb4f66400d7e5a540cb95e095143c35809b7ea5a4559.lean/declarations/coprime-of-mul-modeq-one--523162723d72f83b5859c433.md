# coprime_of_mul_modEq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcc31249-bb0e-281c-c4a6-caafa71d7cce",
  "kind": "theorem",
  "lexical_name": "coprime_of_mul_modEq_one",
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
  "slug": "coprime-of-mul-modeq-one--523162723d72f83b5859c433",
  "source": {
    "blob": "e2eeca0e81620eec3c350508c2c1d4187eb28cad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 361,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:523162723d72f83b5859c4337006a416ce93657b225c10b5fc2463854fee039d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcc31249-bb0e-281c-c4a6-caafa71d7cce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_of_mul_modEq_one (b : ℕ) {a n : ℕ} (h : a * b ≡ 1 [MOD n]) : a.Coprime n := by
  obtain ⟨g, hh⟩ := Nat.gcd_dvd_right a n
  rw [Nat.coprime_iff_gcd_eq_one, ← Nat.dvd_one, ← Nat.modEq_zero_iff_dvd]
  calc
    1 ≡ a * b [MOD a.gcd n] := (hh ▸ h).symm.of_mul_right g
    _ ≡ 0 * b [MOD a.gcd n] := (Nat.modEq_zero_iff_dvd.mpr (Nat.gcd_dvd_left _ _)).mul_right b
    _ = 0 := by rw [zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2eeca0e81620eec3c350508c2c1d4187eb28cad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
