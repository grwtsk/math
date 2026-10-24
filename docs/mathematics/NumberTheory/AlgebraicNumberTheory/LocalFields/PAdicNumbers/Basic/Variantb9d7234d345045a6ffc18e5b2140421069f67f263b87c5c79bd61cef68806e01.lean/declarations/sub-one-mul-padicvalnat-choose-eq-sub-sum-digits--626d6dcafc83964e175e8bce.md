# sub_one_mul_padicValNat_choose_eq_sub_sum_digits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac21fbab0aa34b0a51d52debfe38991c2ab95683",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 634,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81f7d60a-d1e4-c14f-ebb5-7bbaed2941b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dea21200-39c5-4514-6199-4398b136f344",
  "kind": "theorem",
  "lexical_name": "sub_one_mul_padicValNat_choose_eq_sub_sum_digits",
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
  "slug": "sub-one-mul-padicvalnat-choose-eq-sub-sum-digits--626d6dcafc83964e175e8bce",
  "source": {
    "blob": "ac21fbab0aa34b0a51d52debfe38991c2ab95683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 634,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variantb9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:626d6dcafc83964e175e8bcec0068629fc2f0bf2e8bab6b7281df9b7c3249535",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variantb9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dea21200-39c5-4514-6199-4398b136f344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_one_mul_padicValNat_choose_eq_sub_sum_digits {k n : ℕ} [hp : Fact p.Prime]
    (h : k ≤ n) : (p - 1) * padicValNat p (choose n k) =
    (p.digits k).sum + (p.digits (n - k)).sum - (p.digits n).sum := by
  convert @sub_one_mul_padicValNat_choose_eq_sub_sum_digits' _ _ _ ‹_›
  all_goals omega

end padicValNat

section padicValInt

variable {p : ℕ} [hp : Fact p.Prime]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variantb9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variantb9d7234d345045a6ffc18e5b2140421069f67f263b87c5c79bd61cef68806e01.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac21fbab0aa34b0a51d52debfe38991c2ab95683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
