# mulLECancellable_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79af0de3-ddef-5d9d-ad7d-df31258d7a52",
  "kind": "theorem",
  "lexical_name": "mulLECancellable_one",
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
  "slug": "mullecancellable-one--24a461b598c7fe006c3f3693",
  "source": {
    "blob": "c79247af8abd686e70b1d7f728f592613865a84a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1372,
    "line": 1367,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant3a782703ef7e8f2885e00617b0a6c538928cf0f6d853c7df8be7710a88199c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24a461b598c7fe006c3f36933420e055c362bafbcd5a5e7156006cf644acd2d0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant3a782703ef7e8f2885e00617b0a6c538928cf0f6d853c7df8be7710a88199c3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79af0de3-ddef-5d9d-ad7d-df31258d7a52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1367–1372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulLECancellable_one [MulOneClass α] [LE α] : MulLECancellable (1 : α) := fun a b => by
  simpa only [one_mul] using id

namespace MulLECancellable

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant3a782703ef7e8f2885e00617b0a6c538928cf0f6d853c7df8be7710a88199c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant3a782703ef7e8f2885e00617b0a6c538928cf0f6d853c7df8be7710a88199c3c.lean#L1367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c79247af8abd686e70b1d7f728f592613865a84a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
