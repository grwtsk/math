# isQuasiregular_iff_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa728c7bb744630304861ea4b9dfea67cd4e01bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23148c069db0ee6312e40fd05ac620dbc2ce187f15366b4382fc0d209fd41394.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a16bc118-d375-d35f-1e05-7b70bd38c033",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68222653-a6a3-bca5-502b-a03f8cdffd65",
  "kind": "lemma",
  "lexical_name": "isQuasiregular_iff_isUnit",
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
  "slug": "isquasiregular-iff-isunit--5a7e0e7a88597973be7ef07d",
  "source": {
    "blob": "aa728c7bb744630304861ea4b9dfea67cd4e01bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant23148c069db0ee6312e40fd05ac620dbc2ce187f15366b4382fc0d209fd41394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a7e0e7a88597973be7ef07daf70a0a22deb77f062dbe6c9b52a731f249d357a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant23148c069db0ee6312e40fd05ac620dbc2ce187f15366b4382fc0d209fd41394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68222653-a6a3-bca5-502b-a03f8cdffd65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isQuasiregular_iff_isUnit {R : Type*} [Ring R] {x : R} :
    IsQuasiregular x ↔ IsUnit (1 + x) := by
  refine ⟨IsQuasiregular.isUnit_one_add, fun hx ↦ ?_⟩
  rw [isQuasiregular_iff]
  use hx.unit⁻¹ - 1
  constructor
  case' h.left => have := congr($(hx.mul_val_inv) - 1)
  case' h.right => have := congr($(hx.val_inv_mul) - 1)
  all_goals
    rw [← sub_add_cancel (↑hx.unit⁻¹ : R) 1, sub_self] at this
    convert this using 1
    noncomm_ring

-- interestingly, this holds even in the semiring case.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant23148c069db0ee6312e40fd05ac620dbc2ce187f15366b4382fc0d209fd41394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variant23148c069db0ee6312e40fd05ac620dbc2ce187f15366b4382fc0d209fd41394.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa728c7bb744630304861ea4b9dfea67cd4e01bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
