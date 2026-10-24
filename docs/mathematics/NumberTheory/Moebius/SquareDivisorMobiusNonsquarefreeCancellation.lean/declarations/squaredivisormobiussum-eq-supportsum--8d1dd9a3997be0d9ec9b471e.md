# squareDivisorMobiusSum_eq_supportSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1480a95a-7c45-64b9-79be-c370bec42b25",
  "kind": "theorem",
  "lexical_name": "squareDivisorMobiusSum_eq_supportSum",
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
  "slug": "squaredivisormobiussum-eq-supportsum--8d1dd9a3997be0d9ec9b471e",
  "source": {
    "blob": "1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 48,
    "path": "GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d1dd9a3997be0d9ec9b471eebc1faf2e033455fba799aae081dee768d210558",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1480a95a-7c45-64b9-79be-c370bec42b25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareDivisorMobiusSum_eq_supportSum
    {m : ℕ} (hm : 0 < m) :
    squareDivisorMobiusSum m =
      ∑ d ∈ squareDivisorMobiusSupport m, moebiusReal d := by
  classical
  unfold squareDivisorMobiusSum squareDivisorMobiusSupport
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro d _hd
  by_cases hdd : d * d ∣ m
  · by_cases hsq : Squarefree d
    · simp [hdd, hsq]
    · have hmu : moebiusReal d = 0 := by
        unfold moebiusReal
        rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hsq]
        norm_num
      simp [hdd, hsq, hmu]
  · simp [hdd]

/-- Nonsquarefreeness is witnessed by one prime square divisor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
