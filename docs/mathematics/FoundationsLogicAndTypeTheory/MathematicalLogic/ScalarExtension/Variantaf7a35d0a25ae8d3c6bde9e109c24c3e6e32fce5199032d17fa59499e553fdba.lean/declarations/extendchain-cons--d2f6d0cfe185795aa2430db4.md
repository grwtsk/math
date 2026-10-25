# extendChain_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55c0114d09c40c77fe3638b0ec8190c26d7f24ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95cbf09f-ccc5-bfee-3d4f-2c1221bf4e8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb503d41-e377-9cf6-799f-a00fcb8a035b",
  "kind": "theorem",
  "lexical_name": "extendChain_cons",
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
  "slug": "extendchain-cons--d2f6d0cfe185795aa2430db4",
  "source": {
    "blob": "55c0114d09c40c77fe3638b0ec8190c26d7f24ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f6d0cfe185795aa2430db48658962ac661bbc9d306fefe5c4f1ffee24041de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb503d41-e377-9cf6-799f-a00fcb8a035b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendChain_cons
    {B C D : M₀.Object}
    (f : PerfectComplex.CertifiedQuasiIso M₀ B C)
    (rest : PerfectComplex.QuasiIsoChain M₀ C D) :
    E.extendChain (PerfectComplex.QuasiIsoChain.cons f rest) =
      PerfectComplex.QuasiIsoChain.cons
        (E.extendCertifiedQuasiIso f) (E.extendChain rest) :=
  rfl

/--
Determinant transport after scalar extension.  Its source and target are
lines in the `S`-coefficient theory, not lines in the original `R` theory.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScalarExtension/Variantaf7a35d0a25ae8d3c6bde9e109c24c3e6e32fce5199032d17fa59499e553fdba.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55c0114d09c40c77fe3638b0ec8190c26d7f24ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
