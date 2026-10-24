# antipode_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8889968fc1cd440e5feb066c972729f2bef6865c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db575f48-d4f0-fd57-38cf-7709c8afbea2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bdb4173-58c9-0fe6-4138-600e468d8335",
  "kind": "lemma",
  "lexical_name": "antipode_single",
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
  "slug": "antipode-single--8a1973b9168f87ecb6bd32a0",
  "source": {
    "blob": "8889968fc1cd440e5feb066c972729f2bef6865c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a1973b9168f87ecb6bd32a054c72c902af2e0bfbc5f5e66314636678469c730",
  "verification": {
    "reference": "docs/verification/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bdb4173-58c9-0fe6-4138-600e468d8335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma antipode_single (g : G) (a : A) :
    antipode (R := R) (single g a) = single (-g) (antipode (R := R) a) := by
  simp [AddMonoidAlgebra, antipode]

open Coalgebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8889968fc1cd440e5feb066c972729f2bef6865c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
