# endpoint_Y_partial1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f6408de-5da7-abb5-7531-b05ea8890b82",
  "kind": "theorem",
  "lexical_name": "endpoint_Y_partial1",
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
  "slug": "endpoint-y-partial1--ca7025349f7b60350b907613",
  "source": {
    "blob": "8cb86610f4d8014f3b878e3fe63f7e62da6a5412",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant33f4f1385af61d4fbdce8c45351de8544645e86b247a0d5745dd4b6ff29ccd49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca7025349f7b60350b90761361046cb3a664d6321738036ab210ca0ebbc6b859",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant33f4f1385af61d4fbdce8c45351de8544645e86b247a0d5745dd4b6ff29ccd49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f6408de-5da7-abb5-7531-b05ea8890b82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_Y_partial1 (c₁ c₂ c₃ τ₁ τ₂ τ₃ : ℝ) (x : Point) :
    HasDerivAt (fun u => (endpoint c₁ c₂ c₃ u τ₂ τ₃ x).2.2)
      ((c₂-c₁)*(τ₃-2*τ₁)) τ₁ := by
  simp only [endpoint_formula]
  convert! ((hasDerivAt_const τ₁
    (x.2.2+(c₁*x.1-x.2.1)*(τ₃-x.1))).add
    (((hasDerivAt_id τ₁).const_mul (c₂-c₁)).mul
      ((hasDerivAt_const τ₁ τ₃).sub (hasDerivAt_id τ₁)))).add
      (hasDerivAt_const τ₁ ((c₃-c₂)*τ₂*(τ₃-τ₂))) using 1
  simp only [Pi.sub_apply, id_eq]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant33f4f1385af61d4fbdce8c45351de8544645e86b247a0d5745dd4b6ff29ccd49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant33f4f1385af61d4fbdce8c45351de8544645e86b247a0d5745dd4b6ff29ccd49.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cb86610f4d8014f3b878e3fe63f7e62da6a5412` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
