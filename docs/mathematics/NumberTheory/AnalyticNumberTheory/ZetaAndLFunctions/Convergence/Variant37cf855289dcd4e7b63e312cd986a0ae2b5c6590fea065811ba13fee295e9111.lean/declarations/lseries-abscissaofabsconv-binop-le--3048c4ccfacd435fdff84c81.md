# LSeries.abscissaOfAbsConv_binop_le

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
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf40a32e-5179-8638-66c9-feefac68b37d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9eae3ba9-3db6-53e2-6954-58340173738c",
  "kind": "lemma",
  "lexical_name": "LSeries.abscissaOfAbsConv_binop_le",
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
  "slug": "lseries-abscissaofabsconv-binop-le--3048c4ccfacd435fdff84c81",
  "source": {
    "blob": "9cd5bd916c3d3e40c710fce52efc8ecbe66757f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 136,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3048c4ccfacd435fdff84c8178b55daa8d9b351b102270bd8f6eec9bd210277b",
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

Occurrence: `result:9eae3ba9-3db6-53e2-6954-58340173738c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries.abscissaOfAbsConv_binop_le {F : (ℕ → ℂ) → (ℕ → ℂ) → (ℕ → ℂ)}
    (hF : ∀ {f g s}, LSeriesSummable f s → LSeriesSummable g s → LSeriesSummable (F f g) s)
    (f g : ℕ → ℂ) :
    abscissaOfAbsConv (F f g) ≤ max (abscissaOfAbsConv f) (abscissaOfAbsConv g) := by
  refine abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable' fun x hx ↦ hF ?_ ?_
  · exact LSeriesSummable_of_abscissaOfAbsConv_lt_re <|
      (ofReal_re x).symm ▸ (le_max_left ..).trans_lt hx
  · exact LSeriesSummable_of_abscissaOfAbsConv_lt_re <|
      (ofReal_re x).symm ▸ (le_max_right ..).trans_lt hx
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convergence/Variant37cf855289dcd4e7b63e312cd986a0ae2b5c6590fea065811ba13fee295e9111.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cd5bd916c3d3e40c710fce52efc8ecbe66757f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
