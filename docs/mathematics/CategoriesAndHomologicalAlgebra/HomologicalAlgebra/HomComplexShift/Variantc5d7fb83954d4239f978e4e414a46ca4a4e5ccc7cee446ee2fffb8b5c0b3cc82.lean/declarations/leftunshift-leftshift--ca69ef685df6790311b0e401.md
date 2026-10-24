# leftUnshift_leftShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81b6c2a9-d0d5-1295-eaee-d0a1117d3a2e",
  "kind": "lemma",
  "lexical_name": "leftUnshift_leftShift",
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
  "slug": "leftunshift-leftshift--ca69ef685df6790311b0e401",
  "source": {
    "blob": "e270d8e116357ca726eb6f16c52d9c58d5eedc84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca69ef685df6790311b0e401ccacf45f60e96454fab5f4a4f2a32ad846e869a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81b6c2a9-d0d5-1295-eaee-d0a1117d3a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftUnshift_leftShift (a n' : ℤ) (hn' : n + a = n') :
    (γ.leftShift a n' hn').leftUnshift n hn' = γ := by
  ext p q hpq
  rw [(γ.leftShift a n' hn').leftUnshift_v n hn' p q hpq (q-n') (by omega),
    γ.leftShift_v a n' hn' (q-n') q (by omega) p hpq, Linear.comp_units_smul,
    Iso.inv_hom_id_assoc, smul_smul, Int.units_mul_self, one_smul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variantc5d7fb83954d4239f978e4e414a46ca4a4e5ccc7cee446ee2fffb8b5c0b3cc82.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e270d8e116357ca726eb6f16c52d9c58d5eedc84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
