# mobius_abel_commuted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbf05db66ede98567edea937b17f1915b992e096",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfe7a838-042f-b7bf-0402-f267beddcfef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85c9212d-6ba1-288d-8a9c-222c9d019e42",
  "kind": "theorem",
  "lexical_name": "mobius_abel_commuted",
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
  "slug": "mobius-abel-commuted--1e097fadf67db6cc474a3e37",
  "source": {
    "blob": "cbf05db66ede98567edea937b17f1915b992e096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e097fadf67db6cc474a3e373ee6ff73bcf0c274501f6fe139461dce22b84b1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85c9212d-6ba1-288d-8a9c-222c9d019e42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mobius_abel_commuted
    {a b : ℝ} (ha : 0 ≤ a) (hab : a ≤ b)
    (Phi : ℝ → ℝ)
    (hPhiDiff :
      ∀ x ∈ Icc a b, DifferentiableAt ℝ Phi x)
    (hPhiInt :
      IntegrableOn (deriv Phi) (Icc a b)) :
    (∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
      realMoebius d * Phi d) =
      Phi b * mertens b -
        Phi a * mertens a -
        ∫ x in Ioc a b,
          mertens x * deriv Phi x := by
  have h :=
    mobius_abel ha hab Phi hPhiDiff hPhiInt
  calc
    (∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
      realMoebius d * Phi d) =
        ∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
          Phi d * realMoebius d := by
      apply Finset.sum_congr rfl
      intro d hd
      ring
    _ = _ := by
      rw [h]
      congr 1
      apply integral_congr_ae
      filter_upwards [] with x
      ring

/-- The exact source window for the large-divisor Abel transport. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbf05db66ede98567edea937b17f1915b992e096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
