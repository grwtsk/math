# mutate_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeeca22c-bb7e-9214-f29a-9b3257452560",
  "kind": "theorem",
  "lexical_name": "mutate_involutive",
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
  "slug": "mutate-involutive--f3ea6301c50da2750270cc1d",
  "source": {
    "blob": "f9a9391b1121c9fed459a547145aaec7f2596abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variantc10b6855c12bc6f8405e27afcd91ff1a6df0a29b9ce3fd9d1235d909cb8df9b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3ea6301c50da2750270cc1d845fb4cfbf8353bf964a35b25e02c8c82b2c1580",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variantc10b6855c12bc6f8405e27afcd91ff1a6df0a29b9ce3fd9d1235d909cb8df9b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeeca22c-bb7e-9214-f29a-9b3257452560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutate_involutive (p : Weights) (h : p.Positive) : mutate (mutate p) = p := by
  rcases h with ⟨ha, hb, hc⟩
  have hs : p.a + p.c ≠ 0 := ne_of_gt (add_pos ha hc)
  have hb0 : p.b ≠ 0 := ne_of_gt hb
  have he := mutate_endpoint_sum p hs
  apply Weights.ext
  · change (mutate p).b * (mutate p).c / ((mutate p).a + (mutate p).c) = p.a
    rw [he]
    dsimp [mutate]
    field_simp [hs, hb0]
  · exact he
  · change (mutate p).a * (mutate p).b / ((mutate p).a + (mutate p).c) = p.c
    rw [he]
    dsimp [mutate]
    field_simp [hs, hb0]

/-- The first elementary upper-unipotent matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variantc10b6855c12bc6f8405e27afcd91ff1a6df0a29b9ce3fd9d1235d909cb8df9b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BraidCoordinatesPr151/Variantc10b6855c12bc6f8405e27afcd91ff1a6df0a29b9ce3fd9d1235d909cb8df9b7.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a9391b1121c9fed459a547145aaec7f2596abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
