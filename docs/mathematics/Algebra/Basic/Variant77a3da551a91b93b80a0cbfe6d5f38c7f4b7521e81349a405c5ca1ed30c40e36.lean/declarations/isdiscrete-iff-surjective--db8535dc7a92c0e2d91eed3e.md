# isDiscrete_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0484a6a2-05ab-74fc-90c8-f8127d7b189c",
  "kind": "lemma",
  "lexical_name": "isDiscrete_iff_surjective",
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
  "slug": "isdiscrete-iff-surjective--db8535dc7a92c0e2d91eed3e",
  "source": {
    "blob": "08a94ca546b1b67ec27273366b31e6cb43312908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 58,
    "path": "GRWTSK/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db8535dc7a92c0e2d91eed3e90a32819d6f562ef565c9671a8aaa7449d8bdfdc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0484a6a2-05ab-74fc-90c8-f8127d7b189c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDiscrete_iff_surjective (v : Valuation K ℤₘ₀) :
    IsDiscrete v ↔ Surjective v :=
  ⟨fun _ ↦ IsDiscrete.surj v, fun hv ↦ ⟨hv _⟩⟩

end Valuation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08a94ca546b1b67ec27273366b31e6cb43312908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
