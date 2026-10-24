# nonpos_iff_realPart_imaginaryPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03e026f3-ee58-5fa9-8cd0-b5dc2d13f162",
  "kind": "lemma",
  "lexical_name": "nonpos_iff_realPart_imaginaryPart",
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
  "slug": "nonpos-iff-realpart-imaginarypart--9c93c088d52dfa75346a8bd7",
  "source": {
    "blob": "dbe70d49645127138d1ae237714ffbe4c737b5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 624,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant295c63d644b6278ea8117b8ff28551a46f2b011edfb303d3a4ffe6af0c4a136b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c93c088d52dfa75346a8bd761369b7d6a6b7ef70c3841bae7591213d037ea99",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant295c63d644b6278ea8117b8ff28551a46f2b011edfb303d3a4ffe6af0c4a136b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03e026f3-ee58-5fa9-8cd0-b5dc2d13f162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonpos_iff_realPart_imaginaryPart {a : A} :
    a ≤ 0 ↔ ℜ a ≤ 0 ∧ ℑ a = 0 := by
  simpa using nonneg_iff_realPart_imaginaryPart (a := -a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant295c63d644b6278ea8117b8ff28551a46f2b011edfb303d3a4ffe6af0c4a136b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant295c63d644b6278ea8117b8ff28551a46f2b011edfb303d3a4ffe6af0c4a136b.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbe70d49645127138d1ae237714ffbe4c737b5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
