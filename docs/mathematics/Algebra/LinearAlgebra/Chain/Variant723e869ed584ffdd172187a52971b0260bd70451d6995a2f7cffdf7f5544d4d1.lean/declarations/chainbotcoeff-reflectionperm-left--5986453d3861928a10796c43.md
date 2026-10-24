# chainBotCoeff_reflectionPerm_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3dddac8-e4ae-3a57-ae8e-1d914182ab5f",
  "kind": "lemma",
  "lexical_name": "chainBotCoeff_reflectionPerm_left",
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
  "slug": "chainbotcoeff-reflectionperm-left--5986453d3861928a10796c43",
  "source": {
    "blob": "6d9b566699b6f060d451937da1f5cb9c5f61f25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 285,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant723e869ed584ffdd172187a52971b0260bd70451d6995a2f7cffdf7f5544d4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5986453d3861928a10796c43f50efb6ca0eefb3f6ed1ec85dae95249e57a70b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variant723e869ed584ffdd172187a52971b0260bd70451d6995a2f7cffdf7f5544d4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3dddac8-e4ae-3a57-ae8e-1d914182ab5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chainBotCoeff_reflectionPerm_left :
    P.chainBotCoeff (P.reflectionPerm i i) j = P.chainTopCoeff i j := by
  let := P.indexNeg
  have (z : ℤ) : z ∈ Icc (-P.chainTopCoeff i j : ℤ) (P.chainBotCoeff i j) ↔
      z ∈ Icc (-P.chainBotCoeff (-i) j : ℤ) (P.chainTopCoeff (-i) j) := by
    rw [P.chainCoeff_reflectionPerm_left_aux]
  refine le_antisymm ?_ ?_
  · simpa using this (-P.chainBotCoeff (-i) j)
  · simpa using this (-P.chainTopCoeff i j)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variant723e869ed584ffdd172187a52971b0260bd70451d6995a2f7cffdf7f5544d4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variant723e869ed584ffdd172187a52971b0260bd70451d6995a2f7cffdf7f5544d4d1.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d9b566699b6f060d451937da1f5cb9c5f61f25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
