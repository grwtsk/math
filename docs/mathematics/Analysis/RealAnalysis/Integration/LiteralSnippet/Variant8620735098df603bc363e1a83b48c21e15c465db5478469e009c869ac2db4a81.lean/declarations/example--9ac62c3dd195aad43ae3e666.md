# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:089ccb689a77cba9034b06ce57295325b9068645e65bf9240b5e8711e5b92ada",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--9ac62c3dd195aad43ae3e666",
  "source": {
    "blob": "90bd0b8e513e7acd08b50dd455fe87ba4f8c1a23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LiteralSnippet/Variant8620735098df603bc363e1a83b48c21e15c465db5478469e009c869ac2db4a81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ac62c3dd195aad43ae3e66687b028b92ecd96dd85bb0520f0728c5d15f8c593",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LiteralSnippet/Variant8620735098df603bc363e1a83b48c21e15c465db5478469e009c869ac2db4a81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:089ccb689a77cba9034b06ce57295325b9068645e65bf9240b5e8711e5b92ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) (u v : ℝ) (huv : u ≤ v) :
    inner ℂ (fullShift u (zeroExtension (controller a ha)))
      (fullShift v (zeroExtension (controller b hb))) =
      ((Real.exp (-a * (v - u)) / (a + b) : ℝ) : ℂ) :=
  shifted_controller_inner_of_le a b ha hb u v huv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LiteralSnippet/Variant8620735098df603bc363e1a83b48c21e15c465db5478469e009c869ac2db4a81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LiteralSnippet/Variant8620735098df603bc363e1a83b48c21e15c465db5478469e009c869ac2db4a81.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90bd0b8e513e7acd08b50dd455fe87ba4f8c1a23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
