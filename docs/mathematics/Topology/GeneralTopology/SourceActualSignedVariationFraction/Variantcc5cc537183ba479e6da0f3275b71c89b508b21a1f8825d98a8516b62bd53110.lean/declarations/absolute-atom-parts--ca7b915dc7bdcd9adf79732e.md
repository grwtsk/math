# absolute_atom_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7bc8120-4eca-12fd-f3ce-d0a324e523cf",
  "kind": "theorem",
  "lexical_name": "absolute_atom_parts",
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
  "slug": "absolute-atom-parts--ca7b915dc7bdcd9adf79732e",
  "source": {
    "blob": "214ac6c476c86c65a1388938d8895a436911c1fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variantcc5cc537183ba479e6da0f3275b71c89b508b21a1f8825d98a8516b62bd53110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca7b915dc7bdcd9adf79732ed1edf04481a8947245cf780b4e712a2a1adb9458",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variantcc5cc537183ba479e6da0f3275b71c89b508b21a1f8825d98a8516b62bd53110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7bc8120-4eca-12fd-f3ce-d0a324e523cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem absolute_atom_parts (x : ℝ) : |x| = max 0 x + max 0 (-x) := by
  by_cases hx : 0 ≤ x
  · rw [abs_of_nonneg hx,max_eq_right hx,max_eq_left (by linarith : -x ≤ 0)]
    ring
  · rw [abs_of_neg (lt_of_not_ge hx),max_eq_left (le_of_not_ge hx),
      max_eq_right (by linarith : 0 ≤ -x)]
    ring

/-- The unchanged residual is exactly the full positive-minus-negative inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variantcc5cc537183ba479e6da0f3275b71c89b508b21a1f8825d98a8516b62bd53110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualSignedVariationFraction/Variantcc5cc537183ba479e6da0f3275b71c89b508b21a1f8825d98a8516b62bd53110.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `214ac6c476c86c65a1388938d8895a436911c1fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
