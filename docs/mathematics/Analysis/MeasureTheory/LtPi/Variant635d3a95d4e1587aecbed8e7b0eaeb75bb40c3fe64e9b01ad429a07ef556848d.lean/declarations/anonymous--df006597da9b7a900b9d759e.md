# μϕ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad65e6a512ebaa855b98a0d538345be400e61fbd9df89b1859f6780fd3694213",
  "kind": "abbrev",
  "lexical_name": "μϕ",
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
  "slug": "anonymous--df006597da9b7a900b9d759e",
  "source": {
    "blob": "b04937a441f23be14b4ae2541a2114c2bb9d9640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 17,
    "path": "GRWTSK/Analysis/MeasureTheory/LtPi/Variant635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df006597da9b7a900b9d759e081e17fbaaa347627e1a7d2461f6fa24ab9c3783",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LtPi/Variant635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad65e6a512ebaa855b98a0d538345be400e61fbd9df89b1859f6780fd3694213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev μϕ := SpectralProof.Core.autoMeasure ϕ

/--
Integral operator `Lt_pi`, defined by convolution with the weighted kernel
\[
K_t^\varphi(x, y) := k_t(x - y) \cdot e^{ϕ(x)/2} \cdot e^{ϕ(y)/2}
\]
acting on the Hilbert space \( H_ϕ := L^2(ℝ, e^{ϕ(x)} dx) \).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LtPi/Variant635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LtPi/Variant635d3a95d4e1587aecbed8e7b0eaeb75bb40c3fe64e9b01ad429a07ef556848d.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b04937a441f23be14b4ae2541a2114c2bb9d9640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
