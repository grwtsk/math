# natural_division_error_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2b64aaa-7b6d-3d9d-e2f5-0c1e0a9a16ba",
  "kind": "theorem",
  "lexical_name": "natural_division_error_le_one",
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
  "slug": "natural-division-error-le-one--d400fb3762efa5f2a4017ed2",
  "source": {
    "blob": "ab79fc8f41264567f32b4d0cfd52227cabf3fe74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d400fb3762efa5f2a4017ed2f21849a08c3dc9401570cbdd9f7ea502ad495fa4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2b64aaa-7b6d-3d9d-e2f5-0c1e0a9a16ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natural_division_error_le_one (N n : ℕ) (hn : 0 < n) :
    (N : ℝ) / (n : ℝ) - ((N / n : ℕ) : ℝ) ≤ 1 := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
  have heq : (n : ℝ) * ((N / n : ℕ) : ℝ) + ((N % n : ℕ) : ℝ) = N := by
    exact_mod_cast Nat.div_add_mod N n
  have hmod : ((N % n : ℕ) : ℝ) < n := by exact_mod_cast Nat.mod_lt N hn
  have hdiv : (N : ℝ) / (n : ℝ) ≤ ((N / n : ℕ) : ℝ) + 1 := by
    apply (div_le_iff₀ hnR).2
    nlinarith
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab79fc8f41264567f32b4d0cfd52227cabf3fe74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
