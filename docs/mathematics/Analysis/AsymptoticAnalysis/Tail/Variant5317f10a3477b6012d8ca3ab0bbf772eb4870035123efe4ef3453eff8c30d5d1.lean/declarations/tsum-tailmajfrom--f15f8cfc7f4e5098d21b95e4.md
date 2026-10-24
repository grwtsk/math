# tsum_tailMajFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0cb7212-6208-821b-36b1-580b031b7a95",
  "kind": "lemma",
  "lexical_name": "tsum_tailMajFrom",
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
  "slug": "tsum-tailmajfrom--f15f8cfc7f4e5098d21b95e4",
  "source": {
    "blob": "b11766ed503a6d54a8e0b5c7fb3da2f5940ea788",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f15f8cfc7f4e5098d21b95e4a2cdd9926077fbc7bcc8051dc08667312b3e7217",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0cb7212-6208-821b-36b1-580b031b7a95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_tailMajFrom (K : ℕ) : ∑' i, tailMajFrom K i = ∑' j, tailMaj (j + K) := by
  rw [← (summable_tailMajFrom K).sum_add_tsum_nat_add K]
  have h0 : ∑ i ∈ range K, tailMajFrom K i = 0 :=
    sum_eq_zero fun i hi => by
      have : ¬ K ≤ i := by simpa using hi
      simp [tailMajFrom, this]
  have h1 : (fun j => tailMajFrom K (j + K)) = fun j => tailMaj (j + K) := by
    ext j; simp [tailMajFrom]
  rw [h0, zero_add, h1]

/-- **the K-tail of the dyadic majorant is uniformly small.** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant5317f10a3477b6012d8ca3ab0bbf772eb4870035123efe4ef3453eff8c30d5d1.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11766ed503a6d54a8e0b5c7fb3da2f5940ea788` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
