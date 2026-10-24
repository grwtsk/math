# comap_sup_eq_of_le_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd2d7132-2f1e-fdaa-5f08-efc158e7890d",
  "kind": "theorem",
  "lexical_name": "comap_sup_eq_of_le_range",
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
  "slug": "comap-sup-eq-of-le-range--15fa8845c670a7a4ba969719",
  "source": {
    "blob": "a47c77ea50fd32465a64114617d1507c2cfda4cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 516,
    "path": "GRWTSK/Algebra/GroupTheory/Ker/Variantf3258ecb396d3eec6a7ac1666e35d92ee2842facc354367fb0381c6be93f802c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15fa8845c670a7a4ba9697199487159f09f576d2d59f5163eb060437bedb1cbe",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ker/Variantf3258ecb396d3eec6a7ac1666e35d92ee2842facc354367fb0381c6be93f802c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd2d7132-2f1e-fdaa-5f08-efc158e7890d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_sup_eq_of_le_range {H K : Subgroup N} (hH : H ≤ f.range) (hK : K ≤ f.range) :
    comap f H ⊔ comap f K = comap f (H ⊔ K) :=
  map_injective_of_ker_le f ((ker_le_comap f H).trans le_sup_left) (ker_le_comap f (H ⊔ K))
    (by
      rw [map_comap_eq, map_sup, map_comap_eq, map_comap_eq, inf_eq_right.mpr hH,
        inf_eq_right.mpr hK, inf_eq_right.mpr (sup_le hH hK)])

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ker/Variantf3258ecb396d3eec6a7ac1666e35d92ee2842facc354367fb0381c6be93f802c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ker/Variantf3258ecb396d3eec6a7ac1666e35d92ee2842facc354367fb0381c6be93f802c.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47c77ea50fd32465a64114617d1507c2cfda4cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
