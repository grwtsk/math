# IsIntegral.isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c313480f8b1a54986f25ef7065b2fcdeadd4c69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04476b327bde51bb92944f85ac246e7690a410e8b9e3b909dc7840e43036d62f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ab22dbf-404e-4689-abed-634482a6cd85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e712aa9-f345-72a5-4588-c793e17c7b1c",
  "kind": "theorem",
  "lexical_name": "IsIntegral.isUnit",
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
  "slug": "isintegral-isunit--1a482e1637ab57e0905add5a",
  "source": {
    "blob": "3c313480f8b1a54986f25ef7065b2fcdeadd4c69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/Algebra/Basic/Variant04476b327bde51bb92944f85ac246e7690a410e8b9e3b909dc7840e43036d62f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a482e1637ab57e0905add5a6cb976574cd8c2c1aa711e3df4334a7826a2b38d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant04476b327bde51bb92944f85ac246e7690a410e8b9e3b909dc7840e43036d62f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e712aa9-f345-72a5-4588-c793e17c7b1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegral.isUnit [Field R] [Ring S] [IsDomain S] [Algebra R S] {x : S}
    (int : IsIntegral R x) (h0 : x ≠ 0) : IsUnit x :=
  have : FiniteDimensional R (adjoin R {x}) := ⟨(Submodule.fg_top _).mpr int.fg_adjoin_singleton⟩
  (FiniteDimensional.isUnit R (K := adjoin R {x})
    (x := ⟨x, subset_adjoin rfl⟩) <| mt Subtype.ext_iff.mp h0).map (adjoin R {x}).val

/-- A commutative domain that is an integral algebra over a field is a field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant04476b327bde51bb92944f85ac246e7690a410e8b9e3b909dc7840e43036d62f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant04476b327bde51bb92944f85ac246e7690a410e8b9e3b909dc7840e43036d62f.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c313480f8b1a54986f25ef7065b2fcdeadd4c69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
