# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.Associated.normalizedFactors_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:491b10f8-58d2-59aa-15c2-4a01acd2834e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.Associated.normalizedFactors_eq",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-normalizedfactors-varian--e9247847679364b295a34757",
  "source": {
    "blob": "34a3014443f8657825a01989053f9bf03a3f9817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9247847679364b295a34757f33c7cddd42236ccd1580e9976e34bcbed67f934",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:491b10f8-58d2-59aa-15c2-4a01acd2834e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.Associated.normalizedFactors_eq {a b : α} (h : Associated a b) :
    normalizedFactors a = normalizedFactors b := by
  unfold normalizedFactors
  have h' : ⇑(normalize (α := α)) = Associates.out ∘ Associates.mk := funext Associates.out_mk
  rw [h', ← Multiset.map_map, ← Multiset.map_map,
    Associates.rel_associated_iff_map_eq_map.mp (factors_rel_of_associated h)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a3014443f8657825a01989053f9bf03a3f9817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
