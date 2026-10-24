# mul_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2db4f3c6-5849-b559-2bdc-7cfa9faace16",
  "kind": "lemma",
  "lexical_name": "mul_min",
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
  "slug": "mul-min--cd98c2eff740bf64586e6c76",
  "source": {
    "blob": "1a15a1f624a2facf7fa3ed052e12db5594fc8e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 311,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant604e057c7a733f30e953a3aeee8d01773af913c2a6e9582545f258362b30b728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd98c2eff740bf64586e6c76e8f6f89a912de55dcbe6b2e8a51b8f407e01860a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant604e057c7a733f30e953a3aeee8d01773af913c2a6e9582545f258362b30b728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2db4f3c6-5849-b559-2bdc-7cfa9faace16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_min [MulLeftMono α] (a b c : α) : a * min b c = min (a * b) (a * c) :=
  mul_right_mono.map_min

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant604e057c7a733f30e953a3aeee8d01773af913c2a6e9582545f258362b30b728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant604e057c7a733f30e953a3aeee8d01773af913c2a6e9582545f258362b30b728.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a15a1f624a2facf7fa3ed052e12db5594fc8e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
