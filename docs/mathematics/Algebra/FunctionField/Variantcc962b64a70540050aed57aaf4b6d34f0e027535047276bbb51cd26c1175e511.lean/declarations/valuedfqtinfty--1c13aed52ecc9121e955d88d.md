# valuedFqtInfty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b651c5950f20ad35907530e7db11338e99c593b1bae5b1cb647fbc844b5b2711",
  "kind": "instance",
  "lexical_name": "valuedFqtInfty",
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
  "slug": "valuedfqtinfty--1c13aed52ecc9121e955d88d",
  "source": {
    "blob": "34e82fdd1d362400a56ab4797f1c759a84038993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 275,
    "path": "GRWTSK/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c13aed52ecc9121e955d88d66e230774e1d3f9f67fa2e4a302764e587a171b6",
  "verification": {
    "reference": "docs/verification/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b651c5950f20ad35907530e7db11338e99c593b1bae5b1cb647fbc844b5b2711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance valuedFqtInfty : Valued (FqtInfty Fq) ℤₘ₀ :=
  @Valued.valuedCompletion _ _ _ _ (inftyValuedFqt Fq)
set_option linter.uppercaseLean3 false in
#align function_field.valued_Fqt_infty FunctionField.valuedFqtInfty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FunctionField/Variantcc962b64a70540050aed57aaf4b6d34f0e027535047276bbb51cd26c1175e511.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e82fdd1d362400a56ab4797f1c759a84038993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
