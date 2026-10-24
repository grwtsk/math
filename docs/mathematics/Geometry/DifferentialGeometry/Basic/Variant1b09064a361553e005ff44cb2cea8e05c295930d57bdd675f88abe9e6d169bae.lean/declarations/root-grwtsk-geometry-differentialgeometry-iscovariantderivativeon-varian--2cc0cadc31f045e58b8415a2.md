# _root_.GRWTSK.Geometry.DifferentialGeometry.IsCovariantDerivativeOn.Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.ContMDiffCovariantDerivativeOn.affine_combination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cb2813b-fd18-b6a5-c768-006734d6253f",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Geometry.DifferentialGeometry.IsCovariantDerivativeOn.Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.ContMDiffCovariantDerivativeOn.affine_combination",
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
  "slug": "root-grwtsk-geometry-differentialgeometry-iscovariantderivativeon-varian--2cc0cadc31f045e58b8415a2",
  "source": {
    "blob": "ba2001d70aecd37f77d8576635be665896eff63e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 258,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cc0cadc31f045e58b8415a22e1b2dccb741d63f3344658fe9d48fc2fd240aa8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cb2813b-fd18-b6a5-c768-006734d6253f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Geometry.DifferentialGeometry.IsCovariantDerivativeOn.Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.ContMDiffCovariantDerivativeOn.affine_combination [IsManifold I 1 M]
    [VectorBundle 𝕜 F V]
    {cov cov' : (Π x : M, V x) → (Π x : M, TangentSpace I x →L[𝕜] V x)}
    {u : Set M} {f : M → 𝕜} {n : ℕ∞ω} (hf : CMDiff[u] n f)
    (Hcov : ContMDiffCovariantDerivativeOn (F := F) n cov u)
    (Hcov' : ContMDiffCovariantDerivativeOn (F := F) n cov' u) :
    ContMDiffCovariantDerivativeOn F n (fun σ ↦ (f • (cov σ)) + (1 - f) • (cov' σ)) u where
  contMDiff hσ := by
    apply ContMDiffOn.add_section
    · exact hf.smul_section <| Hcov.contMDiff hσ
    · exact (contMDiffOn_const.sub hf).smul_section <| Hcov'.contMDiff hσ

/-- A finite affine combination of covariant derivatives is a covariant derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant1b09064a361553e005ff44cb2cea8e05c295930d57bdd675f88abe9e6d169bae.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2001d70aecd37f77d8576635be665896eff63e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
