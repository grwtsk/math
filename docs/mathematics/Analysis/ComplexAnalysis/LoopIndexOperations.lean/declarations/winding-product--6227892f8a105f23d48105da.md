# winding_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f95aa3a2-afe7-fe69-eeeb-75c302e0adeb",
  "kind": "theorem",
  "lexical_name": "winding_product",
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
  "slug": "winding-product--6227892f8a105f23d48105da",
  "source": {
    "blob": "e32609ad214dfde1f519df64990feb83187836d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 132,
    "path": "GRWTSK/Analysis/Complex/LoopIndexOperations.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6227892f8a105f23d48105da8d2e062962bb66b3b32e25ed161ee49c541e9276",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LoopIndexOperations.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f95aa3a2-afe7-fe69-eeeb-75c302e0adeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem winding_product (g h : C(I, Punctured)) (hg : g 0 = g 1) (hh : h 0 = h 1) :
    winding (productLoop g h) (productLoop_closed g h hg hh) = winding g hg + winding h hh := by
  let L : C(I, ℂ) := ⟨fun t => logLift g t + logLift h t,
    (logLift g).continuous.add (logLift h).continuous⟩
  apply winding_eq_of_lift _ _ L
  · intro t
    change Complex.exp (logLift g t + logLift h t) = (g t).1 * (h t).1
    rw [Complex.exp_add, logLift_exp, logLift_exp]
  · change (logLift g 1 + logLift h 1) - (logLift g 0 + logLift h 0) = _
    rw [deck_add]
    linear_combination winding_spec g hg + winding_spec h hh

end
end GRWTSK.Analysis.Complex.LoopIndexOperations
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/LoopIndexOperations.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/LoopIndexOperations.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e32609ad214dfde1f519df64990feb83187836d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
