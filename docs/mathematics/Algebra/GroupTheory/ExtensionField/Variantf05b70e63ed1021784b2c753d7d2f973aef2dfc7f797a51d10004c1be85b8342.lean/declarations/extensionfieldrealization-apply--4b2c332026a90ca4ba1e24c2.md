# extensionFieldRealization_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d9060c5-dd22-a9b1-db35-6a675b1b78bc",
  "kind": "theorem",
  "lexical_name": "extensionFieldRealization_apply",
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
  "slug": "extensionfieldrealization-apply--4b2c332026a90ca4ba1e24c2",
  "source": {
    "blob": "67174a7216bc071f7843498a390181c16b61b8ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/Algebra/GroupTheory/ExtensionField/Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b2c332026a90ca4ba1e24c21f9d4c17215a4309f2b001af8c5c9ecf58844479",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ExtensionField/Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d9060c5-dd22-a9b1-db35-6a675b1b78bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem extensionFieldRealization_apply
    {prime degree : Nat}
    (basis : ExtensionFieldBasis prime degree)
    (coordinates : Fin degree → Tally)
    (index : Fin degree) :
    extensionFieldRealization basis coordinates index =
      modularRealization prime
        (coordinates (basis.coordinateOrder index)) :=
  rfl

end Mathematics.AbelReynolds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ExtensionField/Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ExtensionField/Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67174a7216bc071f7843498a390181c16b61b8ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
