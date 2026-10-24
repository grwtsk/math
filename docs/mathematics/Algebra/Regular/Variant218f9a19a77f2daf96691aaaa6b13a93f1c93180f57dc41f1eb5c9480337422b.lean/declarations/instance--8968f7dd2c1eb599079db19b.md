# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08c4e36b031d87f4153d317779cf3c4a5a5f049a6f482069cd9dd92ac31a6965",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8968f7dd2c1eb599079db19b",
  "source": {
    "blob": "06a8844b88ad966f78ee6a8384ef312155fd7cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 70,
    "path": "GRWTSK/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8968f7dd2c1eb599079db19b7eaf538486dbb9c56ba9d18a98cf53e62d78f224",
  "verification": {
    "reference": "docs/verification/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08c4e36b031d87f4153d317779cf3c4a5a5f049a6f482069cd9dd92ac31a6965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsDomain.toCancelCommMonoidWithZero : CancelCommMonoidWithZero α :=
  { mul_left_cancel_of_ne_zero := IsLeftCancelMulZero.mul_left_cancel_of_ne_zero }

end IsDomain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Regular/Variant218f9a19a77f2daf96691aaaa6b13a93f1c93180f57dc41f1eb5c9480337422b.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a8844b88ad966f78ee6a8384ef312155fd7cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
