# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77b1baa5df8408a69e41599fa917716cf5270c0bd9e7297c107110033499603a",
  "kind": "example",
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
  "slug": "example--19899a9c27c8c62d030deef7",
  "source": {
    "blob": "593af7fecbf5604a9f40be7c6da46a1d1515b54e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Variant81d96d1215f472ea2b3cc330ee67849283717749294633a87051f4bcc9b32963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19899a9c27c8c62d030deef7080a2b07a5571acb81dba2357955198268faa794",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Variant81d96d1215f472ea2b3cc330ee67849283717749294633a87051f4bcc9b32963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77b1baa5df8408a69e41599fa917716cf5270c0bd9e7297c107110033499603a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {Coord Stage : Type}
    {refines : Stage → Stage → Prop} {observedAt : Coord → Stage → Prop}
    (coverage : PersistentCoverage Coord Stage refines observedAt) : True := by
  fail_if_success
    exact (coverage : ActivationFreeNormalForm ℝ)
  trivial

/-- Decoder injectivity is not an unrestricted observability certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Variant81d96d1215f472ea2b3cc330ee67849283717749294633a87051f4bcc9b32963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Variant81d96d1215f472ea2b3cc330ee67849283717749294633a87051f4bcc9b32963.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `593af7fecbf5604a9f40be7c6da46a1d1515b54e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
