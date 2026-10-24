# rpow_eq_exp_mul_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77181d4404770889d1c31fa246208e38d1770b40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fab9f85c-8744-fc47-8a18-e476c2299972",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7024393b-0037-4558-948b-768957f33301",
  "kind": "lemma",
  "lexical_name": "rpow_eq_exp_mul_log",
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
  "slug": "rpow-eq-exp-mul-log--597ab2412204babac581dbdf",
  "source": {
    "blob": "77181d4404770889d1c31fa246208e38d1770b40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:597ab2412204babac581dbdfcab1ec07a1f17093858480492f36cd0fd712ecc0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7024393b-0037-4558-948b-768957f33301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_eq_exp_mul_log (x : ℝ≥0∞) (y : ℝ) : x ^ y = exp (y * log x) := by
  rw [← log_rpow, exp_log]

@[deprecated (since := "2026-07-15")] alias _root_.EReal.ENNReal.rpow_eq_exp_mul_log :=
  rpow_eq_exp_mul_log

section OrderIso

/-- `ENNReal.log` and its inverse `EReal.exp` are an order isomorphism between `ℝ≥0∞` and
`EReal`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ENNRealLogExp/Variantbe0a86a5d939fda46d6131fb3d86057745ff37a96c4820e865c5bb6d624a2fff.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77181d4404770889d1c31fa246208e38d1770b40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
