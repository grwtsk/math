# mul_klFun_le_toReal_klDiv

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
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33ab8f2b-8916-5936-590a-6a8a908f7c47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b46c24a9-2556-ba2f-c5b9-81cddc49b241",
  "kind": "lemma",
  "lexical_name": "mul_klFun_le_toReal_klDiv",
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
  "slug": "mul-klfun-le-toreal-kldiv--55532b356c7eb04e47a3b0eb",
  "source": {
    "blob": "13554232dca143c81fbbef5d2ed808b81ec95776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 338,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55532b356c7eb04e47a3b0eb9c71fc3aedd9297fde36fca74c2d274b4d0dc52f",
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

Occurrence: `result:b46c24a9-2556-ba2f-c5b9-81cddc49b241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_klFun_le_toReal_klDiv (hμν : μ ≪ ν) (h_int : Integrable (llr μ ν) μ) :
    ν.real univ * klFun (μ.real univ / ν.real univ) ≤ (klDiv μ ν).toReal := by
  calc ν.real univ * klFun (μ.real univ / ν.real univ)
  _ ≤ ∫ x, klFun (μ.rnDeriv ν x).toReal ∂ν := by
    refine mul_le_integral_rnDeriv_of_ac convexOn_klFun continuous_klFun.continuousWithinAt ?_ hμν
    rwa [integrable_klFun_rnDeriv_iff hμν]
  _ = (klDiv μ ν).toReal := by rw [toReal_klDiv_eq_integral_klFun hμν]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13554232dca143c81fbbef5d2ed808b81ec95776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
