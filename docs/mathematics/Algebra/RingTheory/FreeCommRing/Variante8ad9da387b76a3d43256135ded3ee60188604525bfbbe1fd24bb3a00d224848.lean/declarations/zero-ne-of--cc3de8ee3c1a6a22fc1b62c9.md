# zero_ne_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c98b3d94-bd21-b834-9aa8-0ea79b0524ca",
  "kind": "theorem",
  "lexical_name": "zero_ne_of",
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
  "slug": "zero-ne-of--cc3de8ee3c1a6a22fc1b62c9",
  "source": {
    "blob": "a18fe17a7041279ba22b49b088da11f0d277df40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 104,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc3de8ee3c1a6a22fc1b62c903099563e47f8a3dd7b1fe4e7650ff4a867ec16f",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c98b3d94-bd21-b834-9aa8-0ea79b0524ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_ne_of (x : α) : 0 ≠ of x := (of_ne_zero x).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a18fe17a7041279ba22b49b088da11f0d277df40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
