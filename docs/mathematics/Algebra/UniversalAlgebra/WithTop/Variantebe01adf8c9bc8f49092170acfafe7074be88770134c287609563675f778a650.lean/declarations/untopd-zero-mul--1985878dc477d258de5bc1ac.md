# untopD_zero_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed3afc1d1509810b20e7cd587748561850c79d12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:674fdaa5-7a43-043a-3c86-2b80eb34fb1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b91f8d2-e1ba-2fbd-7e8d-605bfe726eb1",
  "kind": "lemma",
  "lexical_name": "untopD_zero_mul",
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
  "slug": "untopd-zero-mul--1985878dc477d258de5bc1ac",
  "source": {
    "blob": "ed3afc1d1509810b20e7cd587748561850c79d12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1985878dc477d258de5bc1ac78f62231b53a08710af405b6b79287356989fd71",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b91f8d2-e1ba-2fbd-7e8d-605bfe726eb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma untopD_zero_mul (a b : WithTop α) : (a * b).untopD 0 = a.untopD 0 * b.untopD 0 := by
  by_cases ha : a = 0; · rw [ha, zero_mul, ← coe_zero, untopD_coe, zero_mul]
  by_cases hb : b = 0; · rw [hb, mul_zero, ← coe_zero, untopD_coe, mul_zero]
  induction a; · rw [top_mul hb, untopD_top, zero_mul]
  induction b; · rw [mul_top ha, untopD_top, mul_zero]
  rw [← coe_mul, untopD_coe, untopD_coe, untopD_coe]

@[deprecated (since := "2025-02-06")]
alias untop'_zero_mul := untopD_zero_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantebe01adf8c9bc8f49092170acfafe7074be88770134c287609563675f778a650.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed3afc1d1509810b20e7cd587748561850c79d12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
