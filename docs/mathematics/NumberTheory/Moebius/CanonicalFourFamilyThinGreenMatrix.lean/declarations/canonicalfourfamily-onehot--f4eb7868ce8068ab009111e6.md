# canonicalFourFamily_oneHot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21789f7-254c-fe4e-7d6d-d8b0f83b707b",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamily_oneHot",
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
  "slug": "canonicalfourfamily-onehot--f4eb7868ce8068ab009111e6",
  "source": {
    "blob": "f71dbe475e99bce6b8ea8c633f320b118d69b6d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 170,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4eb7868ce8068ab009111e66a055989e6afbcfc68ac6eae6db31b9c4dc008e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21789f7-254c-fe4e-7d6d-d8b0f83b707b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem canonicalFourFamily_oneHot
    {X a : ℕ} (ha : 0 < a) (haX : a ≤ 2 * X)
    (w : ℝ) (v : CanonicalFourFamily → ℕ → ℝ) :
    (∑ F : CanonicalFourFamily,
      ∑ c ∈ Finset.range (2 * X + 1),
        (if F = canonicalFourFamilyOfAnchor a ∧
            c = (anchoredMobiusPair a).center then w else 0) * v F c) =
      w * v (canonicalFourFamilyOfAnchor a)
        (anchoredMobiusPair a).center := by
  classical
  have hc := canonicalFourFamily_anchor_center_mem_range ha haX
  calc
    _ = ∑ F : CanonicalFourFamily,
      if F = canonicalFourFamilyOfAnchor a then
        w * v F (anchoredMobiusPair a).center else 0 := by
          apply Finset.sum_congr rfl
          intro F _hF
          by_cases hF : F = canonicalFourFamilyOfAnchor a
          · simp [hF, hc, Finset.sum_ite_eq']
          · simp [hF]
    _ = _ := by simp

/-- Finite matrix semantics: explicit multiplication of the four-family
center vector equals the one-hot anchored-factor sum. All rows and
columns are source-indexed, with exact integer center multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71dbe475e99bce6b8ea8c633f320b118d69b6d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
