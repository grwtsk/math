# ofReal_arctan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7634f5d3-8957-34be-9512-362fcec0b875",
  "kind": "theorem",
  "lexical_name": "ofReal_arctan",
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
  "slug": "ofreal-arctan--016cf39b1b5f66e1a58a83c6",
  "source": {
    "blob": "af4b37d5d6087edd5796971c96aa60c6f74dbae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 88,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:016cf39b1b5f66e1a58a83c61803ba22b1d5d1a5dc3029c6320fffea9a2c0e42",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7634f5d3-8957-34be-9512-362fcec0b875`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofReal_arctan (x : ℝ) : (Real.arctan x : ℂ) = arctan x := by
  conv_rhs => rw [← Real.tan_arctan x]
  rw [ofReal_tan, arctan_tan]
  all_goals norm_cast
  · rw [← ne_eq]; exact (Real.arctan_lt_pi_div_two _).ne
  · exact Real.neg_pi_div_two_lt_arctan _
  · exact (Real.arctan_lt_pi_div_two _).le

/-- The argument of `1 + z` for `z` in the open unit disc is always in `(-π / 2, π / 2)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variante0035f9580ddcbff20d77a673885e1036bc98c198ec7a464f3d4a2fc6bf0c2f1.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af4b37d5d6087edd5796971c96aa60c6f74dbae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
