# quadraticChar_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7d3bddc79562c1967683537b75f5fe003a62c75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bccba71-1f58-631d-45ff-fd0b637230a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fd168bf-926a-1953-5fbf-d0b04060cf89",
  "kind": "theorem",
  "lexical_name": "quadraticChar_two",
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
  "slug": "quadraticchar-two--f636966b99c6eb27e73658d6",
  "source": {
    "blob": "f7d3bddc79562c1967683537b75f5fe003a62c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 35,
    "path": "GRWTSK/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f636966b99c6eb27e73658d6a7dc4b958838fdfe2d84cb452ac5e8796fcad53d",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fd168bf-926a-1953-5fbf-d0b04060cf89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticChar_two [DecidableEq F] (hF : ringChar F ≠ 2) :
    quadraticChar F 2 = χ₈ (Fintype.card F) :=
  IsQuadratic.eq_of_eq_coe (quadraticChar_isQuadratic F) isQuadratic_χ₈ hF
    ((quadraticChar_eq_pow_of_char_ne_two' hF 2).trans (FiniteField.two_pow_card hF))
#align quadratic_char_two quadraticChar_two

/-- `2` is a square in `F` iff `#F` is not congruent to `3` or `5` mod `8`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variant95d9fb69e812505d96a833ac489785e6db43ea5b30eeaa86aac2e025c1b4fc80.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7d3bddc79562c1967683537b75f5fe003a62c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
