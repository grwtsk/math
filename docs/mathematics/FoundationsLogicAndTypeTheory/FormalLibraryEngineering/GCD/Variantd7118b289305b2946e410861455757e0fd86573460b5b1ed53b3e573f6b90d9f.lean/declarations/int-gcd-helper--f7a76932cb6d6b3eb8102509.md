# int_gcd_helper'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6813bc8c457c4ee7450cdc93695a227a1f658164",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edc5b3d8-68bd-a8b8-6377-6ef025eeb462",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da2a6246-a3c3-5e02-dd87-1fed6a19e1e4",
  "kind": "theorem",
  "lexical_name": "int_gcd_helper'",
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
  "slug": "int-gcd-helper--f7a76932cb6d6b3eb8102509",
  "source": {
    "blob": "6813bc8c457c4ee7450cdc93695a227a1f658164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7a76932cb6d6b3eb81025093619a7fa46a302d4299836f0b3e8448be8831d70",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da2a6246-a3c3-5e02-dd87-1fed6a19e1e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_gcd_helper' {d : ℕ} {x y : ℤ} (a b : ℤ) (h₁ : (d : ℤ) ∣ x) (h₂ : (d : ℤ) ∣ y)
    (h₃ : x * a + y * b = d) : Int.gcd x y = d := by
  refine Nat.dvd_antisymm ?_ (Int.coe_nat_dvd.1 (Int.dvd_gcd h₁ h₂))
  rw [← Int.coe_nat_dvd, ← h₃]
  apply dvd_add
  · exact (Int.gcd_dvd_left _ _).mul_right _
  · exact (Int.gcd_dvd_right _ _).mul_right _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variantd7118b289305b2946e410861455757e0fd86573460b5b1ed53b3e573f6b90d9f.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6813bc8c457c4ee7450cdc93695a227a1f658164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
