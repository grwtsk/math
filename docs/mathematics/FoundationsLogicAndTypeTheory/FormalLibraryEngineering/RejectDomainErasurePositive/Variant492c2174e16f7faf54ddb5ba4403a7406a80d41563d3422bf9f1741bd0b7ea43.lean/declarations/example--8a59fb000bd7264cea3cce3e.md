# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:419533b87fea853eeee169bf522d10a1c448686a0a68099e122a22135e998163",
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
  "slug": "example--8a59fb000bd7264cea3cce3e",
  "source": {
    "blob": "0f079ccd328b5ed91cc6e5c93e98df2a8bc3790e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 11,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectDomainErasurePositive/Variant492c2174e16f7faf54ddb5ba4403a7406a80d41563d3422bf9f1741bd0b7ea43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a59fb000bd7264cea3cce3e7cae19e4d372de09622ae4794a7b837b381bbf01",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectDomainErasurePositive/Variant492c2174e16f7faf54ddb5ba4403a7406a80d41563d3422bf9f1741bd0b7ea43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:419533b87fea853eeee169bf522d10a1c448686a0a68099e122a22135e998163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–11.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (U : E →ₗ[R] F) (hU : ∀ x : A.domain, U x ∈ B.domain) : Port A B where
  map := U
  map_domain := hU
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectDomainErasurePositive/Variant492c2174e16f7faf54ddb5ba4403a7406a80d41563d3422bf9f1741bd0b7ea43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectDomainErasurePositive/Variant492c2174e16f7faf54ddb5ba4403a7406a80d41563d3422bf9f1741bd0b7ea43.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f079ccd328b5ed91cc6e5c93e98df2a8bc3790e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
