# isAddTorsionFree_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65afc647df0f71515c76e876c082ef3970bb2f5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d52805b-6512-f5d5-df53-6ccc0fe8cbb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9fe5401-4e60-840b-1001-81fddf8b1d83",
  "kind": "theorem",
  "lexical_name": "isAddTorsionFree_iff'",
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
  "slug": "isaddtorsionfree-iff--ed36d91290ee02fe6d8a08a6",
  "source": {
    "blob": "65afc647df0f71515c76e876c082ef3970bb2f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 78,
    "path": "GRWTSK/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed36d91290ee02fe6d8a08a6fac06d337581f0f57b42c1cf4d0ced5a587c7d11",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9fe5401-4e60-840b-1001-81fddf8b1d83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAddTorsionFree_iff' [AddMonoid M] : IsAddTorsionFree M ↔ ∀ n ≠ 0, IsSMulRegular M n :=
  isAddTorsionFree_iff M

namespace IsSMulRegular

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SMul/Variantb767e9df2c98c1b4086bc1d851e12044aef8528f4951dc8c3c8c0b24ceebc942.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65afc647df0f71515c76e876c082ef3970bb2f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
