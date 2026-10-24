# posSemidef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2981282-f6a1-5204-33cc-4ab486f0035a",
  "kind": "theorem",
  "lexical_name": "posSemidef",
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
  "slug": "possemidef--acf87c6f07979f71885ba8fc",
  "source": {
    "blob": "8a073a067a25a3cba971bb00baffda86dafe8e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 391,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acf87c6f07979f71885ba8fc37fe2296e49c1fff9ef32c0643179bbc67f3d7a4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2981282-f6a1-5204-33cc-4ab486f0035a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posSemidef {M : Matrix n n R} (hM : M.PosDef) : M.PosSemidef := by
  refine ⟨hM.1, ?_⟩
  intro x
  by_cases hx : x = 0
  · simp only [hx, zero_dotProduct, star_zero, RCLike.zero_re']
    exact le_rfl
  · exact le_of_lt (hM.2 x hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant8f6d1529db1144edc5c289621848b970a3ebe1f35198a9232ac0c88fba263a48.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a073a067a25a3cba971bb00baffda86dafe8e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
