# residualPrimeSquareInventory_twenty_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d56aff1-74c4-d2f1-b919-4a27e583cd94",
  "kind": "theorem",
  "lexical_name": "residualPrimeSquareInventory_twenty_five",
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
  "slug": "residualprimesquareinventory-twenty-five--ea96c9dec69d1ac722ef0a67",
  "source": {
    "blob": "8c92439790ad4e1da6b796296a02c400d58b9def",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 229,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectResidualCoefficient/Varianta730cfe0729484cd040b676c8037509265b15ab2160d69a7772b95f99084f6cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea96c9dec69d1ac722ef0a679938d1bb2f721f19fefe08b43101f139599f30b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectResidualCoefficient/Varianta730cfe0729484cd040b676c8037509265b15ab2160d69a7772b95f99084f6cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d56aff1-74c4-d2f1-b919-4a27e583cd94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residualPrimeSquareInventory_twenty_five :
    residualPrimeSquareInventory 25 = {5} := by
  ext d
  constructor
  · intro hd
    rcases mem_residualPrimeSquareInventory.mp hd with ⟨hdnative, hd5, _⟩
    rcases mem_properCoprimeDivisorInventory.mp hdnative with ⟨hdiv, _, hm2, hcop⟩
    have hm5 := proper_coprime_six_ge_five hm2 hcop
    have hd5upper : d * 5 ≤ 25 := by
      calc
        d * 5 ≤ d * (25 / d) := Nat.mul_le_mul_left d hm5
        _ = 25 := Nat.mul_div_cancel' (Nat.dvd_of_mem_divisors hdiv)
    have hd_eq : d = 5 := by omega
    simp only [hd_eq, Finset.mem_singleton]
  · intro hd
    have hd_eq : d = 5 := Finset.mem_singleton.mp hd
    subst d
    apply mem_residualPrimeSquareInventory.mpr
    refine ⟨?_, by norm_num, 5, by decide, by norm_num, Or.inl rfl⟩
    exact mem_properCoprimeDivisorInventory.mpr
      ⟨by norm_num [Nat.mem_divisors], by norm_num, by norm_num, by decide⟩

/-- The first retained product carries exactly the genuine Mangoldt value log five. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectResidualCoefficient/Varianta730cfe0729484cd040b676c8037509265b15ab2160d69a7772b95f99084f6cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectResidualCoefficient/Varianta730cfe0729484cd040b676c8037509265b15ab2160d69a7772b95f99084f6cb.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c92439790ad4e1da6b796296a02c400d58b9def` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
