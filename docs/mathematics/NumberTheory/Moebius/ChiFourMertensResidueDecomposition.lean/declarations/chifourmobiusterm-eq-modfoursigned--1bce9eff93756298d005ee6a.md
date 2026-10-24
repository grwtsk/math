# chiFourMobiusTerm_eq_modFourSigned

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d34f8325-8e67-e52a-99fd-dcad45243f72",
  "kind": "theorem",
  "lexical_name": "chiFourMobiusTerm_eq_modFourSigned",
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
  "slug": "chifourmobiusterm-eq-modfoursigned--1bce9eff93756298d005ee6a",
  "source": {
    "blob": "a786e01e3018eff6dc3d8165971ac537a28fecac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bce9eff93756298d005ee6a8b98ae4b7431a5b623cb9504a66b00e136244845",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d34f8325-8e67-e52a-99fd-dcad45243f72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chiFourMobiusTerm_eq_modFourSigned
    (n : ℕ) :
    (moebiusReal n : ℂ) * ((ZMod.χ₄ n : ℤ) : ℂ) =
      (modFourUnitSignedMobiusTerm n : ℂ) := by
  unfold modFourUnitSignedMobiusTerm
  by_cases h1 : n % 4 = 1
  · rw [ZMod.χ₄_nat_one_mod_four h1]
    simp [h1]
  · by_cases h3 : n % 4 = 3
    · rw [ZMod.χ₄_nat_three_mod_four h3]
      simp [h3]
    · have hlt : n % 4 < 4 := Nat.mod_lt _ (by norm_num)
      have hres : n % 4 = 0 ∨ n % 4 = 2 := by
        omega
      have hmod2 : (n % 4) % 2 = n % 2 :=
        Nat.mod_mod_of_dvd n (by norm_num : 2 ∣ 4)
      have heven : n % 2 = 0 := by
        rw [← hmod2]
        rcases hres with h0 | h2
        · simp [h0]
        · simp [h2]
      rw [ZMod.χ₄_nat_eq_if_mod_four]
      simp [heven, h1, h3]

/-- Exact finite identity: the `chi_4`-twisted Mertens prefix is the difference
of the residue-one and residue-three Möbius prefixes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ChiFourMertensResidueDecomposition.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a786e01e3018eff6dc3d8165971ac537a28fecac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
