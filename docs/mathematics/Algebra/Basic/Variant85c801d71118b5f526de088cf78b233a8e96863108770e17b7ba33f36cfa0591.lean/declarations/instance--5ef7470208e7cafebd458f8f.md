# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:249b7eafbd1071d7e08d6130968a5f8e89f71210443c015c4485dcdb2e64f113",
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
  "slug": "instance--5ef7470208e7cafebd458f8f",
  "source": {
    "blob": "b9bb261d4d9848f5d4595f49209e2f99a081a901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 372,
    "path": "GRWTSK/Algebra/Basic/Variant85c801d71118b5f526de088cf78b233a8e96863108770e17b7ba33f36cfa0591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ef7470208e7cafebd458f8fb660caf4f234fb33774cc7899a2bd78758ff7c9e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant85c801d71118b5f526de088cf78b233a8e96863108770e17b7ba33f36cfa0591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:249b7eafbd1071d7e08d6130968a5f8e89f71210443c015c4485dcdb2e64f113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MulPosReflectLE (FractionalIdeal A⁰ K) where
  elim I J K hJK := by simpa [I.2.ne'] using mul_left_mono (a := I.1⁻¹) hJK

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant85c801d71118b5f526de088cf78b233a8e96863108770e17b7ba33f36cfa0591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant85c801d71118b5f526de088cf78b233a8e96863108770e17b7ba33f36cfa0591.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9bb261d4d9848f5d4595f49209e2f99a081a901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
