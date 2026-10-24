# signedJetDet_five_coarse_of_boxes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27577976eb71975eaa71101e302610eb9320889c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b32e43be-54d4-9e5d-68ae-5d01715aabb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3396d24-2172-de33-d0e6-706e5f053352",
  "kind": "theorem",
  "lexical_name": "signedJetDet_five_coarse_of_boxes",
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
  "slug": "signedjetdet-five-coarse-of-boxes--3cb12cebfb31e4d99c3c7852",
  "source": {
    "blob": "27577976eb71975eaa71101e302610eb9320889c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 170,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cb12cebfb31e4d99c3c7852c44f071143390c24719f16126336765c2040e845",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3396d24-2172-de33-d0e6-706e5f053352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedJetDet_five_coarse_of_boxes (jet : ℕ → ℝ)
    (h : ∀ n : Fin 9, Contains (jetBox n.val) (2000000 * jet n.val)) :
    (-4000000000000000000 : ℝ) < signedJetDet 5 jet ∧
      signedJetDet 5 jet < -3000000000000000000 := by
  have hb := det_sound hankelBox ((2000000 : ℝ) •
      (Matrix.of fun i j : Fin 5 => jet (i.val + j.val)))
        (fun i j => h ⟨i.val + j.val, by omega⟩)
  unfold Contains at hb
  rw [Matrix.det_smul] at hb
  norm_num only [Fintype.card_fin] at hb
  have hlo : (-4000000000000000000 : ℝ) * 2000000 ^ 5 <
      ((det hankelBox).c : ℝ) - (det hankelBox).r := by
    exact_mod_cast hankelBox_coarse_enclosure.1
  have hhi : ((det hankelBox).c : ℝ) + (det hankelBox).r <
      (-3000000000000000000 : ℝ) * 2000000 ^ 5 := by
    exact_mod_cast hankelBox_coarse_enclosure.2
  obtain ⟨hleft, hright⟩ := abs_le.mp hb
  norm_num [signedJetDet]
  constructor <;> nlinarith

end RankFiveInterval

/-- The initial value and successor derivative equations uniquely identify
an all-order source jet on the whole real line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27577976eb71975eaa71101e302610eb9320889c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
