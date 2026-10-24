# coe_essSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d97ee12149c6d8883218ae1eaf811ff5ee458ebf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a25bc00-f970-166b-bc58-5276619a899a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfc51968-1941-a463-88bd-2307ee28833b",
  "kind": "theorem",
  "lexical_name": "coe_essSup",
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
  "slug": "coe-esssup--b1d533fdba90daae58c055b3",
  "source": {
    "blob": "d97ee12149c6d8883218ae1eaf811ff5ee458ebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 297,
    "path": "GRWTSK/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1d533fdba90daae58c055b32a6c7ac162344ac17fa8ad882aeb5f787e99ad99",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfc51968-1941-a463-88bd-2307ee28833b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_essSup {f : α → ℝ≥0} (hf : IsBoundedUnder (· ≤ ·) (ae μ) f) :
    ((essSup f μ : ℝ≥0) : ℝ≥0∞) = essSup (fun x => (f x : ℝ≥0∞)) μ :=
  (ENNReal.coe_sInf <| hf).trans <|
    eq_of_forall_le_iff fun r => by
      simp [essSup, limsup, limsSup, eventually_map, ENNReal.forall_ennreal]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d97ee12149c6d8883218ae1eaf811ff5ee458ebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
