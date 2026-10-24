# finitePresentation_holdsForLocalizationAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c98dab35ce570eba1bd498d5d551a8cfd0dee71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5dd28f7a-7b92-a68a-b76e-9b7820d96ebf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32ea084d-01a2-5132-e0b7-78fb6cbe7d75",
  "kind": "theorem",
  "lexical_name": "finitePresentation_holdsForLocalizationAway",
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
  "slug": "finitepresentation-holdsforlocalizationaway--f8626af9c97d977c5cebdd1e",
  "source": {
    "blob": "5c98dab35ce570eba1bd498d5d551a8cfd0dee71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8626af9c97d977c5cebdd1e8fd4989afe5732bb6c445c183b6695c45b90012a",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ea084d-01a2-5132-e0b7-78fb6cbe7d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finitePresentation_holdsForLocalizationAway :
    HoldsForLocalizationAway @FinitePresentation := by
  introv R _
  suffices Algebra.FinitePresentation R S by
    rw [RingHom.FinitePresentation]
    convert this; ext
    rw [Algebra.smul_def]; rfl
  exact IsLocalization.Away.finitePresentation r

/--
If `S` is an `R`-algebra with a surjection from a finitely-presented `R`-algebra `A`, such that
localized at a spanning set `{ r }` of elements of `A`, `Sᵣ` is finitely-presented, then
`S` is finitely presented.
This is almost `finitePresentation_ofLocalizationSpanTarget`. The difference is,
that here the set `t` generates the unit ideal of `A`, while in the general version,
it only generates a quotient of `A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c98dab35ce570eba1bd498d5d551a8cfd0dee71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
