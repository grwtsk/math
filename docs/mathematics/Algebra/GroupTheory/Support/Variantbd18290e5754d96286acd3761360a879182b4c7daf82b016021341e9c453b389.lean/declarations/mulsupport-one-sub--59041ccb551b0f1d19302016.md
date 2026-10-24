# mulSupport_one_sub'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bac1a73b-8f40-c611-2526-797d6d66124e",
  "kind": "theorem",
  "lexical_name": "mulSupport_one_sub'",
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
  "slug": "mulsupport-one-sub--59041ccb551b0f1d19302016",
  "source": {
    "blob": "4310697a229080bacc375010ad5cc38b8f1dd67e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 444,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variantbd18290e5754d96286acd3761360a879182b4c7daf82b016021341e9c453b389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59041ccb551b0f1d1930201616b7e84d87ac7059f5dbcedcdd845a78c6387f81",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variantbd18290e5754d96286acd3761360a879182b4c7daf82b016021341e9c453b389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bac1a73b-8f40-c611-2526-797d6d66124e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulSupport_one_sub' [One R] [AddGroup R] (f : α → R) : mulSupport (1 - f) = support f := by
  rw [sub_eq_add_neg, mulSupport_one_add', support_neg']
#align function.mul_support_one_sub' Function.mulSupport_one_sub'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variantbd18290e5754d96286acd3761360a879182b4c7daf82b016021341e9c453b389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variantbd18290e5754d96286acd3761360a879182b4c7daf82b016021341e9c453b389.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4310697a229080bacc375010ad5cc38b8f1dd67e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
