# convexOn_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ef08865-f4e6-aac7-16af-995b6c428e13",
  "kind": "theorem",
  "lexical_name": "convexOn_zpow",
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
  "slug": "convexon-zpow--03f1e976ddc845d07e19443d",
  "source": {
    "blob": "a05d1e2cb1dbdcaad7e9bd8b8865db4e4782c211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 133,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03f1e976ddc845d07e19443d37871ba4ae8049e0b633410145ada008bed3acac",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ef08865-f4e6-aac7-16af-995b6c428e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexOn_zpow : ∀ m : ℤ, ConvexOn ℝ (Ioi 0) fun x : ℝ => x ^ m
  | (n : ℕ) => by
    simp_rw [zpow_ofNat]
    exact (convexOn_pow n).subset Ioi_subset_Ici_self (convex_Ioi _)
  | -[n+1] => by
    simp_rw [zpow_negSucc]
    refine' ⟨convex_Ioi _, _⟩
    rintro a (ha : 0 < a) b (hb : 0 < b) μ ν hμ hν h
    field_simp
    rw [div_le_div_iff]
    · -- Porting note: added type ascription to LHS
      calc
        (1 : ℝ) * (a ^ (n + 1) * b ^ (n + 1)) = ((μ + ν) ^ 2 * (a * b)) ^ (n + 1) := by rw [h]; ring
        _ ≤ ((μ * b + ν * a) * (μ * a + ν * b)) ^ (n + 1) := ?_
        _ = (μ * b + ν * a) ^ (n + 1) * (μ * a + ν * b) ^ (n + 1) := by rw [mul_pow]
        _ ≤ (μ * b ^ (n + 1) + ν * a ^ (n + 1)) * (μ * a + ν * b) ^ (n + 1) := ?_
      · -- Porting note: added type ascription to LHS
        gcongr (?_ : ℝ) ^ _
        have : (0 : ℝ) ≤ μ * ν * (a - b) ^ 2 := by positivity
        linarith
      · gcongr
        apply (convexOn_pow (n + 1)).2 hb.le ha.le hμ hν h
    · have : 0 < μ * a + ν * b := by cases le_or_lt a b <;> nlinarith
      positivity
    · positivity
#align convex_on_zpow convexOn_zpow

/- `Real.log` is strictly concave on $(0, +∞)$.

We give an elementary proof rather than using the second derivative test, since this lemma is
needed early in the analysis library. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a05d1e2cb1dbdcaad7e9bd8b8865db4e4782c211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
