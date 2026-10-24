# polynomial_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a699c5c2-aff6-c5c8-f773-a559ee91566d",
  "kind": "theorem",
  "lexical_name": "polynomial_return",
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
  "slug": "polynomial-return--e268822ab780e23ff3bed846",
  "source": {
    "blob": "85791bde48b25174407397722a437ae2eec086db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 38,
    "path": "GRWTSK/Analysis/BranchSequenceReturn/Variant086dd4e51f6c49d0a08a377d47322ab5427c17187100032fce786f34ac8e0a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e268822ab780e23ff3bed846ca5967de1de6935e38931248ccd36f0e22ccff6b",
  "verification": {
    "reference": "docs/verification/Analysis/BranchSequenceReturn/Variant086dd4e51f6c49d0a08a377d47322ab5427c17187100032fce786f34ac8e0a71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a699c5c2-aff6-c5c8-f773-a559ee91566d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_return {target observable correction : ℝ → ℝ}
    (hid : IdentifiesWithLoss target observable correction)
    (hobs : PolynomialBound observable) (hloss : PolynomialBound correction) :
    PolynomialBound target := by
  obtain ⟨C, r, hC, hr, ho⟩ := hobs
  obtain ⟨D, s, hD, hs, hl⟩ := hloss
  refine ⟨C + D, max r s, add_nonneg hC hD, hr.trans (le_max_left r s), ?_⟩
  intro T hT
  have hbase : 1 ≤ 1 + T := by linarith
  have hro := Real.rpow_le_rpow_of_exponent_le hbase (le_max_left r s)
  have hso := Real.rpow_le_rpow_of_exponent_le hbase (le_max_right r s)
  have hc := mul_le_mul_of_nonneg_left hro hC
  have hd := mul_le_mul_of_nonneg_left hso hD
  have ht := hid T hT
  have h1 := ho T hT
  have h2 := hl T hT
  calc
    target T ≤ C * (1 + T) ^ r + D * (1 + T) ^ s := by linarith
    _ ≤ C * (1 + T) ^ max r s + D * (1 + T) ^ max r s := add_le_add hc hd
    _ = (C + D) * (1 + T) ^ max r s := by ring

/-- The AM route contains its independent frequency, growth, identification and
correction obligations. It is not a necessary route for every possible P04 proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchSequenceReturn/Variant086dd4e51f6c49d0a08a377d47322ab5427c17187100032fce786f34ac8e0a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchSequenceReturn/Variant086dd4e51f6c49d0a08a377d47322ab5427c17187100032fce786f34ac8e0a71.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85791bde48b25174407397722a437ae2eec086db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
