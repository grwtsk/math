# _root_.ENNReal.toEReal_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39e54edd8eb5601aaf601074fb40b80bc29e434b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 554,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3ba16b5-c084-41ed-741d-b3b457edfaff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e06ec535-cdad-0816-675a-018d969bfa7d",
  "kind": "lemma",
  "lexical_name": "_root_.ENNReal.toEReal_sub",
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
  "slug": "root-ennreal-toereal-sub--29837ce2629897e0efef30a5",
  "source": {
    "blob": "39e54edd8eb5601aaf601074fb40b80bc29e434b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 554,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29837ce2629897e0efef30a5915eafc07e9a16ad64d531694612643ed60f0df2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e06ec535-cdad-0816-675a-018d969bfa7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.ENNReal.toEReal_sub {x y : ℝ≥0∞} (hy_top : y ≠ ∞) (h_le : y ≤ x) :
    (x - y).toEReal = x.toEReal - y.toEReal := by
  lift y to ℝ≥0 using hy_top
  cases x with
  | top => simp [coe_nnreal_eq_coe_real]
  | coe x =>
    simp only [coe_nnreal_eq_coe_real, ← ENNReal.coe_sub, NNReal.coe_sub (mod_cast h_le), coe_sub]

/-! ### Multiplication -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e54edd8eb5601aaf601074fb40b80bc29e434b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
