# cast_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bffca4fd-c0f9-f348-d8b3-6404d69598f8",
  "kind": "lemma",
  "lexical_name": "cast_inv",
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
  "slug": "cast-inv--f0227df8bb40cfeacccf6527",
  "source": {
    "blob": "36fca0ae409ac09b2198feb55a24dd4f3294a3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 117,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CharZero/Variante72f372bee2397f7ebdda8bc8ba8a9df5b449fbf023015d64d7c1a7de195c9b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0227df8bb40cfeacccf652774c1ff45a126445ad38f559d9893ef463f07965e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CharZero/Variante72f372bee2397f7ebdda8bc8ba8a9df5b449fbf023015d64d7c1a7de195c9b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bffca4fd-c0f9-f348-d8b3-6404d69598f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] lemma cast_inv (p) : (p⁻¹ : ℚ≥0) = (p : α)⁻¹ := map_inv₀ (castHom α) _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CharZero/Variante72f372bee2397f7ebdda8bc8ba8a9df5b449fbf023015d64d7c1a7de195c9b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CharZero/Variante72f372bee2397f7ebdda8bc8ba8a9df5b449fbf023015d64d7c1a7de195c9b8.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36fca0ae409ac09b2198feb55a24dd4f3294a3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
