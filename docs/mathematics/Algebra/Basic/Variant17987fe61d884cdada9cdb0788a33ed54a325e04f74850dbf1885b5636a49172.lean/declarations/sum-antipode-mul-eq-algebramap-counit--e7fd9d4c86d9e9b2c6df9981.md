# sum_antipode_mul_eq_algebraMap_counit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7356d69-3c14-b840-86d3-3be50e05a5e3",
  "kind": "lemma",
  "lexical_name": "sum_antipode_mul_eq_algebraMap_counit",
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
  "slug": "sum-antipode-mul-eq-algebramap-counit--e7fd9d4c86d9e9b2c6df9981",
  "source": {
    "blob": "73e3e665900d4969a6aceb9eb09535119a0701c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 108,
    "path": "GRWTSK/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7fd9d4c86d9e9b2c6df9981086701bd4446e457e80969fd0a30929583f37014",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7356d69-3c14-b840-86d3-3be50e05a5e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_antipode_mul_eq_algebraMap_counit (repr : Repr R a ι) :
    ∑ i ∈ repr.index, antipode R (repr.left i) * repr.right i =
      algebraMap R A (counit a) := by
  simpa [← repr.eq, map_sum] using congr($(mul_antipode_rTensor_comul (R := R)) a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73e3e665900d4969a6aceb9eb09535119a0701c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
