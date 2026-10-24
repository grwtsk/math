# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27dd911261aee790081765de11916e81e7765a50ac2edbecccca18ef37b5bc7e",
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
  "slug": "example--21f34afcda3fb22d3cdc5c51",
  "source": {
    "blob": "a306bcfe194520f1aa5701c87745b1dfbca4e52e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 8,
    "path": "GRWTSK/NumberTheory/Cyclotomic/Checks/Negative/ThirdCyclotomicIntegerNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21f34afcda3fb22d3cdc5c5189faf4d786f0b8399bab9f329c6dee6b250e7ec8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Cyclotomic/Checks/Negative/ThirdCyclotomicIntegerNorm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27dd911261aee790081765de11916e81e7765a50ac2edbecccca18ef37b5bc7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : Ideal.absNorm (Ideal.span ({(2:O)} : Set O))=2 :=
  principal_two_absNorm

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals.Checks
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Cyclotomic/Checks/Negative/ThirdCyclotomicIntegerNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Cyclotomic/Checks/Negative/ThirdCyclotomicIntegerNorm.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a306bcfe194520f1aa5701c87745b1dfbca4e52e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
