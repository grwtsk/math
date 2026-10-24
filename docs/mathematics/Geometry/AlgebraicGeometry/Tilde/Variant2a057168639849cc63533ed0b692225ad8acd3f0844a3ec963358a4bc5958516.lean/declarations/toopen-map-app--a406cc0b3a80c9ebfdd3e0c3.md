# toOpen_map_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea558261-0e52-3711-1611-2bbc571d243e",
  "kind": "lemma",
  "lexical_name": "toOpen_map_app",
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
  "slug": "toopen-map-app--a406cc0b3a80c9ebfdd3e0c3",
  "source": {
    "blob": "7b414ff838619701683daafb0d6146a5314aebc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 231,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a406cc0b3a80c9ebfdd3e0c3987a6d83481da35cecf460eb3a4d6b2450b0a88f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea558261-0e52-3711-1611-2bbc571d243e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toOpen_map_app {M N : ModuleCat R} (f : M ⟶ N)
    (U : TopologicalSpace.Opens (PrimeSpectrum R)) :
    toOpen M U ≫ (modulesSpecToSheaf.map (tilde.map f)).1.app _ =
    f ≫ toOpen N U := by
  ext x; exact Subtype.ext (funext fun y ↦ IsLocalizedModule.map_apply y.1.asIdeal.primeCompl
    (LocalizedModule.mkLinearMap y.1.asIdeal.primeCompl M)
     (LocalizedModule.mkLinearMap y.1.asIdeal.primeCompl N) _ x)

variable (R) in
/-- Tilde as a functor -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b414ff838619701683daafb0d6146a5314aebc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
