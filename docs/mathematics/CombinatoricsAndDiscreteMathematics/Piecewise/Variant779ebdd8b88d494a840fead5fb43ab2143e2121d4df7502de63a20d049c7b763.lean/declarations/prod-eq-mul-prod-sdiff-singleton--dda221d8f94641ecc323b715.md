# prod_eq_mul_prod_sdiff_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9d43a8ac76a43eed6a5f2e1143347bb0199112c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/779ebdd8b88d494a840fead5fb43ab2143e2121d4df7502de63a20d049c7b763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:743ed7c4-0cea-957d-0d88-9d5ccd2f8a9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bccce869-9925-11bf-1f4d-16362e687fce",
  "kind": "theorem",
  "lexical_name": "prod_eq_mul_prod_sdiff_singleton",
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
  "slug": "prod-eq-mul-prod-sdiff-singleton--dda221d8f94641ecc323b715",
  "source": {
    "blob": "a9d43a8ac76a43eed6a5f2e1143347bb0199112c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant779ebdd8b88d494a840fead5fb43ab2143e2121d4df7502de63a20d049c7b763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dda221d8f94641ecc323b7153db4b1ae09b29743609f3a9c669905e116b0dfc3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Piecewise/Variant779ebdd8b88d494a840fead5fb43ab2143e2121d4df7502de63a20d049c7b763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bccce869-9925-11bf-1f4d-16362e687fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_eq_mul_prod_sdiff_singleton [DecidableEq ι] {s : Finset ι} (i : ι) (f : ι → M)
    (h : i ∉ s → f i = 1) : ∏ x ∈ s, f x = f i * ∏ x ∈ s \ {i}, f x := by
  by_cases hs : i ∈ s
  · convert! (s.prod_inter_mul_prod_sdiff { i } f).symm
    simp [hs]
  · simp_all only [not_false_eq_true, forall_const, one_mul]
    apply Finset.prod_congr <;> aesop

@[deprecated (since := "2026-06-03")]
alias prod_eq_mul_prod_diff_singleton := prod_eq_mul_prod_sdiff_singleton

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Piecewise/Variant779ebdd8b88d494a840fead5fb43ab2143e2121d4df7502de63a20d049c7b763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant779ebdd8b88d494a840fead5fb43ab2143e2121d4df7502de63a20d049c7b763.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d43a8ac76a43eed6a5f2e1143347bb0199112c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
