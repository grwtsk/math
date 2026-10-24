# reciprocal_frequency_realization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fe05ede-0661-1fcd-f55a-50ae9df96fbd",
  "kind": "theorem",
  "lexical_name": "reciprocal_frequency_realization",
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
  "slug": "reciprocal-frequency-realization--5dffb0daa7a85c6d54b34045",
  "source": {
    "blob": "9dfe868ea52027095f1c600ae0983ff6f22db1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 212,
    "path": "GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dffb0daa7a85c6d54b34045305690c28bf68efa83248dec9ab0f4255735adf5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fe05ede-0661-1fcd-f55a-50ae9df96fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_frequency_realization (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) :
    FrequencyRealization a (x 0)⁻¹ := by
  have hb := reciprocal_frequency_bounds a ha hbox hrec
  have hf : Int.fract (x 0)⁻¹ = (x 0)⁻¹ := Int.fract_eq_self.2 ⟨hb.1.le, hb.2⟩
  have hfloor : ⌊(x 0)⁻¹⌋ = (0 : ℤ) := Int.floor_eq_zero_iff.2 ⟨hb.1.le, hb.2⟩
  apply GenContFract.ext
  · simp only [GenContFract.of_h_eq_floor, hfloor, Int.cast_zero, continuedFraction]
  · apply Stream'.Seq.ext
    intro n
    have hs : GenContFract.IntFractPair.stream (x 0)⁻¹ (n + 1) =
        some ⟨(a n : ℤ), (x (n + 1))⁻¹⟩ := by
      rw [GenContFract.IntFractPair.stream_succ (by rw [hf]; exact ne_of_gt hb.1),
        hf, inv_inv]
      exact complete_quotient_stream a ha hbox hrec n
    have ht := GenContFract.get?_of_eq_some_of_succ_get?_intFractPair_stream hs
    simpa only [Int.cast_natCast, continuedFraction_term] using ht

/-- Every infinite positive partial-quotient stream has an actual irrational real realization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ContinuedFractions/FrequencyRealization.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dfe868ea52027095f1c600ae0983ff6f22db1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
