# ballMul_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25d47c3f-d438-1945-1e0a-a9d786439c18",
  "kind": "theorem",
  "lexical_name": "ballMul_sound",
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
  "slug": "ballmul-sound--0db17fdbb521d1c29168e611",
  "source": {
    "blob": "0343df4901aad3635a6f3f4422a62b69a24e6af2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 111,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalDyadicArithmetic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0db17fdbb521d1c29168e61139a6c3068fab40d48b647add672bfe40d9cac79d",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25d47c3f-d438-1945-1e0a-a9d786439c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ballMul_sound (bits : ℕ) {a b : Ball} {z w : ℂ}
    (ha : Holds a z) (hb : Holds b w) : Holds (ballMul bits a b) (z * w) := by
  apply roundBall_sound
  have hra : (0 : ℝ) ≤ a.rad := by exact_mod_cast holds_radius_nonneg ha
  have hrb : (0 : ℝ) ≤ b.rad := by exact_mod_cast holds_radius_nonneg hb
  have hma : (0 : ℝ) ≤ magnitude a.mid := by exact_mod_cast magnitude_nonneg a.mid
  have hmb : (0 : ℝ) ≤ magnitude b.mid := by exact_mod_cast magnitude_nonneg b.mid
  unfold Holds
  simp only [toComplex_mul, Rat.cast_add, Rat.cast_mul]
  calc
    _ = ‖toComplex a.mid * (w - toComplex b.mid) +
        toComplex b.mid * (z - toComplex a.mid) +
        (z - toComplex a.mid) * (w - toComplex b.mid)‖ := by congr 1; ring
    _ ≤ ‖toComplex a.mid * (w - toComplex b.mid)‖ +
        ‖toComplex b.mid * (z - toComplex a.mid)‖ +
        ‖(z - toComplex a.mid) * (w - toComplex b.mid)‖ :=
      (norm_add_le _ _).trans (add_le_add_right (norm_add_le _ _) _)
    _ ≤ _ := by
      simp only [norm_mul]
      exact add_le_add
        (add_le_add
          (mul_le_mul (norm_le_magnitude _) hb (norm_nonneg _) hma)
          (mul_le_mul (norm_le_magnitude _) ha (norm_nonneg _) hmb))
        (mul_le_mul ha hb (norm_nonneg _) hra)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalDyadicArithmetic.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0343df4901aad3635a6f3f4422a62b69a24e6af2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
