# eqOn_of_leftInvOn_of_rightInvOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8029885-2259-8843-c966-d1260bb8eff5",
  "kind": "theorem",
  "lexical_name": "eqOn_of_leftInvOn_of_rightInvOn",
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
  "slug": "eqon-of-leftinvon-of-rightinvon--34ada645ca2cdf8bb446e2b4",
  "source": {
    "blob": "4f14b2deda36daf292fcb4494380c8619004ffe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 905,
    "line": 900,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantf6899146b7b8e845eabff27de7a76e374d1d6af7c12dfddfaeaf31cee3e26d6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34ada645ca2cdf8bb446e2b4c96bafad6bc728be178355b8fada14874b6aeb4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantf6899146b7b8e845eabff27de7a76e374d1d6af7c12dfddfaeaf31cee3e26d6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8029885-2259-8843-c966-d1260bb8eff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–905.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_of_leftInvOn_of_rightInvOn (h₁ : LeftInvOn f₁' f s) (h₂ : RightInvOn f₂' f t)
    (h : MapsTo f₂' t s) : EqOn f₁' f₂' t := fun y hy =>
  calc
    f₁' y = (f₁' ∘ f ∘ f₂') y := congr_arg f₁' (h₂ hy).symm
    _ = f₂' y := h₁ (h hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantf6899146b7b8e845eabff27de7a76e374d1d6af7c12dfddfaeaf31cee3e26d6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantf6899146b7b8e845eabff27de7a76e374d1d6af7c12dfddfaeaf31cee3e26d6d.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f14b2deda36daf292fcb4494380c8619004ffe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
