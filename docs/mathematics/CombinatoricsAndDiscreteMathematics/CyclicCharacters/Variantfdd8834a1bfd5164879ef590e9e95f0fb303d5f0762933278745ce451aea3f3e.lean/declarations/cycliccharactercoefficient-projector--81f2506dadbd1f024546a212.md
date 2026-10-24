# cyclicCharacterCoefficient_projector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:337dc3ba-482b-d50b-2ab5-5e7b16b7aa4d",
  "kind": "theorem",
  "lexical_name": "cyclicCharacterCoefficient_projector",
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
  "slug": "cycliccharactercoefficient-projector--81f2506dadbd1f024546a212",
  "source": {
    "blob": "12a4c44a8c8b263c063549c4a0d7af018da77194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81f2506dadbd1f024546a212e427844e7b659ccbf3216c5aee70f3816213e9b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:337dc3ba-482b-d50b-2ab5-5e7b16b7aa4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cyclicCharacterCoefficient_projector
    (j : ZMod n) (signal : CyclicSignal n) :
    cyclicCharacterCoefficient j (cyclicCharacterProjector j signal) =
      cyclicCharacterCoefficient j signal := by
  classical
  have hn : (n : ℂ) ≠ 0 := by
    exact_mod_cast (NeZero.ne n)
  unfold cyclicCharacterCoefficient cyclicCharacterProjector
  calc
    (∑ r : ZMod n,
        conj (cyclicCharacter j r) *
          ((n : ℂ)⁻¹ * cyclicCharacter j r *
            ∑ s : ZMod n, conj (cyclicCharacter j s) * signal s)) =
        ∑ r : ZMod n,
          (n : ℂ)⁻¹ *
            (∑ s : ZMod n, conj (cyclicCharacter j s) * signal s) := by
      apply Finset.sum_congr rfl
      intro r _
      calc
        conj (cyclicCharacter j r) *
              ((n : ℂ)⁻¹ * cyclicCharacter j r *
                ∑ s : ZMod n, conj (cyclicCharacter j s) * signal s) =
            ((n : ℂ)⁻¹ *
              (∑ s : ZMod n, conj (cyclicCharacter j s) * signal s)) *
              (conj (cyclicCharacter j r) * cyclicCharacter j r) := by
          ring
        _ = (n : ℂ)⁻¹ *
              (∑ s : ZMod n, conj (cyclicCharacter j s) * signal s) := by
          rw [cyclicCharacter_conj_mul_self, mul_one]
    _ = (n : ℂ) *
          ((n : ℂ)⁻¹ *
            (∑ s : ZMod n, conj (cyclicCharacter j s) * signal s)) := by
      simp [ZMod.card]
    _ = ∑ s : ZMod n, conj (cyclicCharacter j s) * signal s := by
      rw [← mul_assoc, mul_inv_cancel₀ hn, one_mul]

/-- Character projectors are idempotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variantfdd8834a1bfd5164879ef590e9e95f0fb303d5f0762933278745ce451aea3f3e.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12a4c44a8c8b263c063549c4a0d7af018da77194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
