# ofStabilizer.snoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01c1350cc60cbcd79f33fca73e056b6cb5e49c008c1efb7d072395647332412c",
  "kind": "def",
  "lexical_name": "ofStabilizer.snoc",
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
  "slug": "ofstabilizer-snoc--9f6d01b036a589bf9617c6a2",
  "source": {
    "blob": "135b74e30ed958a1acb5a0da8e61741c3407a74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 183,
    "path": "GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f6d01b036a589bf9617c6a2edfbb8808a3bb8e2ffc3dbb0a681ef96c48f2977",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01c1350cc60cbcd79f33fca73e056b6cb5e49c008c1efb7d072395647332412c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofStabilizer.snoc {n : ℕ} (x : Fin n ↪ ofStabilizer G a) :
    Fin n.succ ↪ α :=
  Fin.Embedding.snoc (x.trans (subtype _)) (a := a) (by
    simp [Set.mem_range, trans_apply, not_exists]
    exact fun i ↦ (x i).prop)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OfStabilizer/Variant3a7d2b3a66178d037715a07b6e89b27c039189d000bbcf2fc3db0f26944d4dcb.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135b74e30ed958a1acb5a0da8e61741c3407a74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
