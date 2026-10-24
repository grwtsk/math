# instGroupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbb87f288e6f729629a06411edcf48f154baa0d3a3960a4af391c35e03e26dc1",
  "kind": "instance",
  "lexical_name": "instGroupWithZero",
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
  "slug": "instgroupwithzero--0e1a913f3ff0ede17c627c72",
  "source": {
    "blob": "9a7fffe7dd90004b7ec42783aef97285f931af13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 150,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variant374571bf2bd092d49e0a7faab8eea3d916f2cc0473330033417dd2f2327ecbb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e1a913f3ff0ede17c627c72950db96ff1bfaef97f7efe893a2c2159fbf6572e",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variant374571bf2bd092d49e0a7faab8eea3d916f2cc0473330033417dd2f2327ecbb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbb87f288e6f729629a06411edcf48f154baa0d3a3960a4af391c35e03e26dc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instGroupWithZero : GroupWithZero (AlgebraicClosure k) :=
  inferInstanceAs <| GroupWithZero (_ ⧸ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variant374571bf2bd092d49e0a7faab8eea3d916f2cc0473330033417dd2f2327ecbb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variant374571bf2bd092d49e0a7faab8eea3d916f2cc0473330033417dd2f2327ecbb6.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a7fffe7dd90004b7ec42783aef97285f931af13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
