# normalized_feshbach_coercive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c39fa51d-1d36-d529-3dc7-0461e92dfea5",
  "kind": "theorem",
  "lexical_name": "normalized_feshbach_coercive",
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
  "slug": "normalized-feshbach-coercive--bde8837c721925d8916cc794",
  "source": {
    "blob": "3beac2b8e5bdd4b95e657599d525b6d19f0b48e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 186,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bde8837c721925d8916cc794dc4ed4615ad8213d6532fc8f51ccc2859a98d022",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c39fa51d-1d36-d529-3dc7-0461e92dfea5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_feshbach_coercive (A L : Matrix m m ℂ) [Invertible L]
    (C : Matrix n m ℂ) (B : Matrix n n ℂ) [Invertible B]
    (hBH : B.IsHermitian) (a η b M : ℝ)
    (ha : 0 < a) (hη : 0 < η) (hb : 0 < b) (hM : 0 ≤ M)
    (hroot : A = Lᴴ * L)
    (hA : ∀ x : m → ℂ, a * ‖WithLp.toLp 2 x‖ ^ 2 ≤ hermitianEnergy A x)
    (hB : ∀ y : n → ℂ, b * ‖WithLp.toLp 2 y‖ ^ 2 ≤ hermitianEnergy B y)
    (hΓ : ∀ z : m → ℂ, hermitianEnergy (normalizedCoupling L C B) z ≤
      (1 - η) * ‖WithLp.toLp 2 z‖ ^ 2)
    (hK : ∀ x : m → ℂ,
      ‖WithLp.toLp 2 ((⅟B * C).mulVec x)‖ ≤ M * ‖WithLp.toLp 2 x‖)
    (x : m → ℂ) (y : n → ℂ) :
    min (a * η) b / (1 + M) ^ 2 *
      (‖WithLp.toLp 2 x‖ ^ 2 + ‖WithLp.toLp 2 y‖ ^ 2) ≤
        hermitianEnergy (fromBlocks A Cᴴ C B) (Sum.elim x y) :=
  feshbach_coercive A C B hBH a η b M ha hη hb hM hA hB
    (normalized_margin A L C B η hroot hΓ) hK x y

end FormalResearch.PositiveAtlas.QuantitativeGap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Varianta6b5978552504b7e722f9a06d7139a76053c28b179d99895f5c71ed93fa67f82.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3beac2b8e5bdd4b95e657599d525b6d19f0b48e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
