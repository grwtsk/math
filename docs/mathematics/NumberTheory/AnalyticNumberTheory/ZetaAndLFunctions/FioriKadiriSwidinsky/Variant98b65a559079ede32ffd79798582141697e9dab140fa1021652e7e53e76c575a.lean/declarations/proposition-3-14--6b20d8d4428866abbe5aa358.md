# proposition_3_14

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef5957ad-0c26-6ea6-4bfb-0c78eeff0e81",
  "kind": "theorem",
  "lexical_name": "proposition_3_14",
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
  "slug": "proposition-3-14--6b20d8d4428866abbe5aa358",
  "source": {
    "blob": "aeb084ec45220d3f0ae964018cea4bce2d78a5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 562,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b20d8d4428866abbe5aa3586ccc34f78cb70cdf109dc4f9d7b74f2380208082",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef5957ad-0c26-6ea6-4bfb-0c78eeff0e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proposition_3_14 (I : Inputs) {c : ℝ} (K : ℕ) (hc : c > 1) (hK : K ≥ 2) :
    let t₀ : ℝ → ℝ := fun x ↦ exp (sqrt (log x) / I.R)
    let T : ℝ → ℝ := fun x ↦ (t₀ x) ^ c
    let σ₂ : ℝ → ℝ := fun x ↦ 1 - 2 / (I.R * log (t₀ x))
    let w₁ : ℝ := 1 + (c - 1) / K
    let C := 2 * (I.ZDB.c₁ (σ₂ 1)) * exp (16 * w₁ / (3 * I.R)) * w₁ ^ 3
    let f : ℝ → ℝ := fun x ↦ C * (log (t₀ x)) ^ (3 + 4 / (I.R * log (t₀ x))) / (t₀ x) ^ 2
    Asymptotics.IsEquivalent Filter.atTop (fun x ↦ ε₄ I (t₀ x) x (σ₂ x) K (T x)) f
    ∧ AntitoneOn (fun x ↦ ε₄ I (t₀ x) x (σ₂ x) K (T x)) (Set.Ioi (exp (I.R * exp 2)))
    ∧ AntitoneOn (fun x ↦ (ε₄ I (t₀ x) x (σ₂ x) K (T x)) * (t₀ x) ^ 2 / (log (t₀ x)) ^ 3)
        (Set.Ioi (exp (I.R * exp 2))) := by sorry

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeb084ec45220d3f0ae964018cea4bce2d78a5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
