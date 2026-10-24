# fixed_positive_weight_tail_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be171c69-4826-5cad-4e56-bde96ad3fff8",
  "kind": "theorem",
  "lexical_name": "fixed_positive_weight_tail_integrable",
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
  "slug": "fixed-positive-weight-tail-integrable--bfa4a67d9eabc5c2e876db9c",
  "source": {
    "blob": "5760518b62ea8536492fdff50d5af69f331cd861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 30,
    "path": "GRWTSK/Analysis/ActualWeightedNormUpper/Variant7b43fde4eb1572f076388abdf92f78558b50ed2b34706d2a79eb664637a0be4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfa4a67d9eabc5c2e876db9c35c7a629ca7a1c719fc469cc6d9fe02dd1b8b537",
  "verification": {
    "reference": "docs/verification/Analysis/ActualWeightedNormUpper/Variant7b43fde4eb1572f076388abdf92f78558b50ed2b34706d2a79eb664637a0be4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be171c69-4826-5cad-4e56-bde96ad3fff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_positive_weight_tail_integrable {θ : ℝ} (hθ : 0 < θ) :
    IntegrableOn (tailPrice θ) (Ioi 0) volume := by
  have hm (n : ℕ) : IntegrableOn (fun y : ℝ ↦ y ^ n * Real.exp (-θ * y))
      (Ioi 0) volume := by
    simpa only [Real.rpow_natCast, Real.rpow_one] using
      (integrableOn_rpow_mul_exp_neg_mul_rpow (s := (n : ℝ)) (p := 1) (b := θ)
        (lt_of_lt_of_le (by norm_num : (-1 : ℝ) < 0) (Nat.cast_nonneg n)) (by norm_num) hθ)
  have heq : tailPrice θ = fun y ↦
      2359296 * (y ^ 5 * Real.exp (-θ * y)) +
        73728 * (y ^ 7 * Real.exp (-θ * y)) +
          576 * (y ^ 9 * Real.exp (-θ * y)) := by
    funext y
    unfold tailPrice tailPolynomial
    ring
  rw [heq]
  exact (((hm 5).const_mul 2359296).add ((hm 7).const_mul 73728)).add
    ((hm 9).const_mul 576)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualWeightedNormUpper/Variant7b43fde4eb1572f076388abdf92f78558b50ed2b34706d2a79eb664637a0be4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualWeightedNormUpper/Variant7b43fde4eb1572f076388abdf92f78558b50ed2b34706d2a79eb664637a0be4a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5760518b62ea8536492fdff50d5af69f331cd861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
