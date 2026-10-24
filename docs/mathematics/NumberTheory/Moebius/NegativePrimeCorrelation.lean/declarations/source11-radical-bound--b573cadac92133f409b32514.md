# source11_radical_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fcb10e9-aaf2-9254-5805-cf013ead3d9a",
  "kind": "theorem",
  "lexical_name": "source11_radical_bound",
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
  "slug": "source11-radical-bound--b573cadac92133f409b32514",
  "source": {
    "blob": "f3e314f6323bf623e11acf62d28597feede00b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b573cadac92133f409b32514d79731ecc6094ab302eaa56d3500377d3ed6d312",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fcb10e9-aaf2-9254-5805-cf013ead3d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source11_radical_bound :
    1 - (sqrt 2)⁻¹ - (sqrt 3)⁻¹ - (sqrt 5)⁻¹ + (sqrt 6)⁻¹ -
      (sqrt 7)⁻¹ + (sqrt 10)⁻¹ < -(1/3:ℝ) := by
  have hs (n : ℕ) (hn : 0 < n) : ((sqrt (n:ℝ))⁻¹)^2 = (n:ℝ)⁻¹ := by
    rw [inv_pow, sq_sqrt (Nat.cast_nonneg n)]
  have hn (n : ℕ) : 0 ≤ (sqrt (n:ℝ))⁻¹ := by positivity
  have h2 : (7/10:ℝ) ≤ (sqrt 2)⁻¹ := by nlinarith [hs 2 (by norm_num), hn 2]
  have h3 : (4/7:ℝ) ≤ (sqrt 3)⁻¹ := by nlinarith [hs 3 (by norm_num), hn 3]
  have h5 : (4/9:ℝ) ≤ (sqrt 5)⁻¹ := by nlinarith [hs 5 (by norm_num), hn 5]
  have h6 : (sqrt 6)⁻¹ ≤ (5/12:ℝ) := by nlinarith [hs 6 (by norm_num), hn 6]
  have h7 : (3/8:ℝ) ≤ (sqrt 7)⁻¹ := by nlinarith [hs 7 (by norm_num), hn 7]
  have h10 : (sqrt 10)⁻¹ ≤ (1/3:ℝ) := by nlinarith [hs 10 (by norm_num), hn 10]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/NegativePrimeCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3e314f6323bf623e11acf62d28597feede00b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
