# sticky_obstruction_no_internal_polynomial_smoothing_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57e78c7d1f6bd1782c044105b0eb00826bae041e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67993216f56ce7c8fb4f558539c0c0ab65d0261e1c46c2e076d8022982acda38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9be0cbe-5b24-acbd-fa12-2ce0912694c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e43c690-f956-258f-fdb5-94c8bd3f3326",
  "kind": "theorem",
  "lexical_name": "sticky_obstruction_no_internal_polynomial_smoothing_if_supplied",
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
  "slug": "sticky-obstruction-no-internal-polynomial-smoothing-if-supplied--f4bc68fe95f42b84f102c767",
  "source": {
    "blob": "57e78c7d1f6bd1782c044105b0eb00826bae041e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 122,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RobinMassGapGlitchResolution/Variant67993216f56ce7c8fb4f558539c0c0ab65d0261e1c46c2e076d8022982acda38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4bc68fe95f42b84f102c7672900753bd9208998f25962b3d02a0098827b3cd3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RobinMassGapGlitchResolution/Variant67993216f56ce7c8fb4f558539c0c0ab65d0261e1c46c2e076d8022982acda38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e43c690-f956-258f-fdb5-94c8bd3f3326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sticky_obstruction_no_internal_polynomial_smoothing_if_supplied
    (O : StickyObstruction) :
    O.noInternalPolynomialSmoothingKnown :=
  O.noInternalPolynomialSmoothingKnown_certified

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RobinMassGapGlitchResolution/Variant67993216f56ce7c8fb4f558539c0c0ab65d0261e1c46c2e076d8022982acda38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RobinMassGapGlitchResolution/Variant67993216f56ce7c8fb4f558539c0c0ab65d0261e1c46c2e076d8022982acda38.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e78c7d1f6bd1782c044105b0eb00826bae041e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
