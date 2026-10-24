# maxNilpotentIdeal_eq_top_of_isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afd89086-b3b4-a8b0-1720-d217e7d838a6",
  "kind": "lemma",
  "lexical_name": "maxNilpotentIdeal_eq_top_of_isNilpotent",
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
  "slug": "maxnilpotentideal-eq-top-of-isnilpotent--dd67b3a3fafde3ba3f06ecec",
  "source": {
    "blob": "2fc68f517c627a1147a0ffbf63bfc3e3481da8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1025,
    "line": 1021,
    "path": "GRWTSK/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd67b3a3fafde3ba3f06ecec413f1e0965dde41ec7694bb51ef8b809384f7203",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afd89086-b3b4-a8b0-1720-d217e7d838a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1021–1025.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma maxNilpotentIdeal_eq_top_of_isNilpotent [LieRing.IsNilpotent L] :
    maxNilpotentIdeal R L = ⊤ :=
  maxNilpotentSubmodule_eq_top_of_isNilpotent R L L

end LieAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean#L1021).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fc68f517c627a1147a0ffbf63bfc3e3481da8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
