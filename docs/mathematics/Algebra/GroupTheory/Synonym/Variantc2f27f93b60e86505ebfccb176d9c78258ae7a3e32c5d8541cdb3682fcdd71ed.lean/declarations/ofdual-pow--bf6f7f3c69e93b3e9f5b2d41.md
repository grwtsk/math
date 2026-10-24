# ofDual_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a053746b-6153-3a55-6231-f9c68e72d934",
  "kind": "theorem",
  "lexical_name": "ofDual_pow",
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
  "slug": "ofdual-pow--bf6f7f3c69e93b3e9f5b2d41",
  "source": {
    "blob": "1003694b62e7f8ca6c3a4197f73d4d94342f26e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 152,
    "path": "GRWTSK/Algebra/GroupTheory/Synonym/Variantc2f27f93b60e86505ebfccb176d9c78258ae7a3e32c5d8541cdb3682fcdd71ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf6f7f3c69e93b3e9f5b2d4124075418d386329ec5accb25871ed3bb30ef2dc2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Synonym/Variantc2f27f93b60e86505ebfccb176d9c78258ae7a3e32c5d8541cdb3682fcdd71ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a053746b-6153-3a55-6231-f9c68e72d934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofDual_pow [Pow α β] (a : αᵒᵈ) (b : β) : ofDual (a ^ b) = ofDual a ^ b := rfl

@[to_additive (attr := simp, to_additive) (reorder := 1 2, 4 5) toDual_smul']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Synonym/Variantc2f27f93b60e86505ebfccb176d9c78258ae7a3e32c5d8541cdb3682fcdd71ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Synonym/Variantc2f27f93b60e86505ebfccb176d9c78258ae7a3e32c5d8541cdb3682fcdd71ed.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1003694b62e7f8ca6c3a4197f73d4d94342f26e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
