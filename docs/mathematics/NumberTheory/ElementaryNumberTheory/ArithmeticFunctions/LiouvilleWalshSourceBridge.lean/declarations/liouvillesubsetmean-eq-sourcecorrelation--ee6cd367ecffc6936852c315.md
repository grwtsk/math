# liouvilleSubsetMean_eq_sourceCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c38012e-35fc-0746-43d8-bc7344a68c3f",
  "kind": "theorem",
  "lexical_name": "liouvilleSubsetMean_eq_sourceCorrelation",
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
  "slug": "liouvillesubsetmean-eq-sourcecorrelation--ee6cd367ecffc6936852c315",
  "source": {
    "blob": "b11fea87045fe6833a20d9201c0917ff636886f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 95,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee6cd367ecffc6936852c3153fa189e2c73e7769ab3beac6dede641c650027ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c38012e-35fc-0746-43d8-bc7344a68c3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liouvilleSubsetMean_eq_sourceCorrelation
    (N : ℕ) (H : Finset ℕ) (S : Finset {h : ℕ // h ∈ H}) :
    liouvilleSubsetMean N H S =
      sourceCorrelation (Finset.range N) S
        (ordinaryShiftWord H liouvillePositiveBool) := by
  unfold liouvilleSubsetMean sourceCorrelation plainMomentOn ordinaryShiftWord
  simp only [Finset.card_range]
  congr 1
  apply Finset.sum_congr rfl
  intro n _
  apply Finset.prod_congr rfl
  intro h _
  exact (liouvillePositiveBool_sign (n + h.val)).symm

/-- The empty-character normalization is valid only for a nonempty
sample N>0. It does NOT use the false identity lambda(0)^2=1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshSourceBridge.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11fea87045fe6833a20d9201c0917ff636886f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
