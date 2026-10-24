# isPurelyInseparable_iff_natSepDegree_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bcec32dd4ce27af11336dcc4bea0e72bcb2a30c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e1738f84058b4f639892cae59b160f40e7d62705651aa8c178535d06098871c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c88fb537-572b-67fe-9a28-6fdca44952ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61df5e8a-3c40-f955-0931-e926f0528851",
  "kind": "theorem",
  "lexical_name": "isPurelyInseparable_iff_natSepDegree_eq_one",
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
  "slug": "ispurelyinseparable-iff-natsepdegree-eq-one--333c54db53f6859294df9a9d",
  "source": {
    "blob": "1bcec32dd4ce27af11336dcc4bea0e72bcb2a30c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 287,
    "path": "GRWTSK/Algebra/Basic/Variant2e1738f84058b4f639892cae59b160f40e7d62705651aa8c178535d06098871c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:333c54db53f6859294df9a9de23187895e972e115a22535b97def1d3a5ee88fc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant2e1738f84058b4f639892cae59b160f40e7d62705651aa8c178535d06098871c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61df5e8a-3c40-f955-0931-e926f0528851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPurelyInseparable_iff_natSepDegree_eq_one :
    IsPurelyInseparable F E ↔ ∀ x : E, (minpoly F x).natSepDegree = 1 := by
  obtain ⟨q, _⟩ := ExpChar.exists F
  simp_rw [isPurelyInseparable_iff_pow_mem F q, minpoly.natSepDegree_eq_one_iff_pow_mem q]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant2e1738f84058b4f639892cae59b160f40e7d62705651aa8c178535d06098871c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant2e1738f84058b4f639892cae59b160f40e7d62705651aa8c178535d06098871c.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bcec32dd4ce27af11336dcc4bea0e72bcb2a30c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
