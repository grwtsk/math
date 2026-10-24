# getElem_toArray_roo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:537d1019-0e13-17c3-afc8-791e7c8cfad0",
  "kind": "theorem",
  "lexical_name": "getElem_toArray_roo",
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
  "slug": "getelem-toarray-roo--3b4e184edf6ac33bd503069a",
  "source": {
    "blob": "699e828f90c8e94e33a7b65eb617f643afc5b247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1268,
    "line": 1265,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant15d00354e94b2e7fc742b856f8591c8369c7faba60be977f552b8f5ed4071f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b4e184edf6ac33bd503069a520c07f90e1428d65a641c7c0035d0700d2fd7e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant15d00354e94b2e7fc742b856f8591c8369c7faba60be977f552b8f5ed4071f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:537d1019-0e13-17c3-afc8-791e7c8cfad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1265–1268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_toArray_roo {m n i : Nat} (_h : i < (m<...n).toArray.size) :
    (m<...n).toArray[i]'_h = m + 1 + i := by
  simp [toArray_roo_eq_toArray_rco]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant15d00354e94b2e7fc742b856f8591c8369c7faba60be977f552b8f5ed4071f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NatLemmas/Variant15d00354e94b2e7fc742b856f8591c8369c7faba60be977f552b8f5ed4071f5b.lean#L1265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `699e828f90c8e94e33a7b65eb617f643afc5b247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
