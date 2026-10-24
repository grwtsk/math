# LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cd5bd916c3d3e40c710fce52efc8ecbe66757f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be40bb59-8c3d-287e-c5fc-b4135c4710a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95c1e6ff-b013-23e5-c075-d21320988688",
  "kind": "lemma",
  "lexical_name": "LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable",
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
  "slug": "lseries-abscissaofabsconv-le-of-forall-lt-lseriessummable--9ec9ef9cf76c4f6c9b92bbeb",
  "source": {
    "blob": "9cd5bd916c3d3e40c710fce52efc8ecbe66757f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ec9ef9cf76c4f6c9b92bbeb3a38367cde7757836d1ca1bcf207c263f00cf40c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95c1e6ff-b013-23e5-c075-d21320988688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable {f : ℕ → ℂ} {x : ℝ}
    (h : ∀ y : ℝ, x < y → LSeriesSummable f y) :
    abscissaOfAbsConv f ≤ x := by
  refine sInf_le_iff.mpr fun y hy ↦ le_of_forall_gt_imp_ge_of_dense fun a ↦ ?_
  replace hy : ∀ (a : ℝ), LSeriesSummable f a → y ≤ a := by simpa [mem_lowerBounds] using hy
  cases a with
  | coe a₀ => exact_mod_cast fun ha ↦ hy a₀ (h a₀ ha)
  | bot => simp
  | top => simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cd5bd916c3d3e40c710fce52efc8ecbe66757f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
