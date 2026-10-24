# preimage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aacb1554-9380-7ce2-26a8-258dba459ebe",
  "kind": "lemma",
  "lexical_name": "preimage_le",
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
  "slug": "preimage-le--38cddaa51f59513280cd259c",
  "source": {
    "blob": "60f914565d485f80117958baa3ade59dc99f1e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 143,
    "path": "GRWTSK/Algebra/GroupTheory/Completion/Variant4bc0713e3bf6c5f32d05f9d5701839765b1a5e1dd2cf05151a4d229d589e8873.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38cddaa51f59513280cd259cde1dee46600aac63e6575c75610be4ca4688b512",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Completion/Variant4bc0713e3bf6c5f32d05f9d5701839765b1a5e1dd2cf05151a4d229d589e8873.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aacb1554-9380-7ce2-26a8-258dba459ebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preimage_le {f : G ⟶ ↧P} {H K : OpenNormalSubgroup P}
    (h : H ≤ K) : preimage f H ≤ preimage f K :=
  FiniteIndexNormalSubgroup.comap_mono _ h

/-- The induced map on finite quotients coming from a morphism to `P`. -/
@[to_additive /-- The induced map on finite quotients coming from a morphism to `P`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Completion/Variant4bc0713e3bf6c5f32d05f9d5701839765b1a5e1dd2cf05151a4d229d589e8873.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Completion/Variant4bc0713e3bf6c5f32d05f9d5701839765b1a5e1dd2cf05151a4d229d589e8873.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60f914565d485f80117958baa3ade59dc99f1e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
