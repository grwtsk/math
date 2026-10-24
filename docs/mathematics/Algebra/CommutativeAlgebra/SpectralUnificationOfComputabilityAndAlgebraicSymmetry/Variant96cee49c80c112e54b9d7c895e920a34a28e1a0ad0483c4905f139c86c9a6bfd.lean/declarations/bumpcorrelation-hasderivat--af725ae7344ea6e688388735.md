# bumpCorrelation_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c33c2431-4d69-fb9b-2e89-acf53f07c49e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b0d1ebd-a614-631f-7463-0903864e87d9",
  "kind": "theorem",
  "lexical_name": "bumpCorrelation_hasDerivAt",
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
  "slug": "bumpcorrelation-hasderivat--af725ae7344ea6e688388735",
  "source": {
    "blob": "06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 158,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af725ae7344ea6e68838873579e3829b4625239ea514bdcd464c09e450a53903",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b0d1ebd-a614-631f-7463-0903864e87d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpCorrelation_hasDerivAt (v : ℝ) :
    HasDerivAt bumpCorrelation (bumpCorrelationFirst v) v := by
  have hv := hasDerivAt_id v
  have hq := ((((((((((hv.pow 8).const_mul (7)).add ((hv.pow 7).const_mul (126))).add ((hv.pow
    6).const_mul (988))).add ((hv.pow 5).const_mul (4344))).add ((hv.pow 4).const_mul
    (11376))).add ((hv.pow 3).const_mul (17376))).add ((hv.pow 2).const_mul (15808))).add
    (hv.const_mul (8064))).add (hasDerivAt_const v (1792 : ℝ)))
  have h := ((((hasDerivAt_const v (2 : ℝ)).sub hv).pow 9).mul hq).div_const 1531530
  unfold bumpCorrelation bumpCorrelationFirst
  dsimp at h
  convert h using 1 <;> try rfl
  ring

/-- Exact ordinary differentiation in the unit displacement variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
