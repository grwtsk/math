# toReal_klDiv_eq_integral_klFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13554232dca143c81fbbef5d2ed808b81ec95776",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e785d384-cc5b-47fe-b5a5-9d85da9d09eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e140680-e5de-ef9f-ae49-19a756f1245d",
  "kind": "lemma",
  "lexical_name": "toReal_klDiv_eq_integral_klFun",
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
  "slug": "toreal-kldiv-eq-integral-klfun--74ff28e8aecbe4e1b37e88c1",
  "source": {
    "blob": "13554232dca143c81fbbef5d2ed808b81ec95776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74ff28e8aecbe4e1b37e88c19d9dac494cf875f51cef69af92617dcef6a5668d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e140680-e5de-ef9f-ae49-19a756f1245d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toReal_klDiv_eq_integral_klFun (h : μ ≪ ν) :
    (klDiv μ ν).toReal = ∫ x, klFun (μ.rnDeriv ν x).toReal ∂ν := by
  by_cases h_int : Integrable (llr μ ν) μ
  · rw [klDiv_eq_integral_klFun, ite_eq_left ⟨h, h_int⟩, ENNReal.toReal_ofReal]
    exact integral_nonneg fun _ ↦ klFun_nonneg ENNReal.toReal_nonneg
  · rw [integral_undef]
    · rw [klDiv_of_not_integrable h_int, ENNReal.toReal_top]
    · rwa [integrable_klFun_rnDeriv_iff h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13554232dca143c81fbbef5d2ed808b81ec95776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
