# degree_sub_leadingTerm_lt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4331e659800060ce6c850000140409cbfa369a5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:943187d6-a135-f774-7481-8a4ea11f1513",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1839190b-5d49-61dc-aa5c-73e2507fa491",
  "kind": "theorem",
  "lexical_name": "degree_sub_leadingTerm_lt_iff",
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
  "slug": "degree-sub-leadingterm-lt-iff--9ae0b268e597d185ab8c16a0",
  "source": {
    "blob": "4331e659800060ce6c850000140409cbfa369a5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1251,
    "line": 1245,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ae0b268e597d185ab8c16a00c8b54cbc4a869ef01fadc5394f93a61f63b00ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1839190b-5d49-61dc-aa5c-73e2507fa491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1245–1251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_sub_leadingTerm_lt_iff {f : MvPolynomial σ R} :
    m.degree (f - m.leadingTerm f) ≺[m] m.degree f ↔ m.degree f ≠ 0 := by
  refine ⟨?_, degree_sub_leadingTerm_lt_degree⟩
  intro h h'
  simp only [h', map_zero] at h
  exact not_lt_bot h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonomialOrder/Variantd21c43bf9503c6521fbb75840f21daf3243cc801dfc62bf4f95cdf03c96835fd.lean#L1245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4331e659800060ce6c850000140409cbfa369a5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
