# quantization_not_declared_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e6d05db-8324-14a5-4280-3c055d4ab3bd",
  "kind": "theorem",
  "lexical_name": "quantization_not_declared_injective",
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
  "slug": "quantization-not-declared-injective--be0735b3eeefd4b362f13a0f",
  "source": {
    "blob": "7d7a8774f395e3b3f0396b0d3ede72548c414fb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/ThresholdMatrixMaps/Variantda282ac2ff0fbffa/ExplicitFailureOfInjectivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be0735b3eeefd4b362f13a0fdd46030502498b5e4be6f375280fdaee042bb534",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/ThresholdMatrixMaps/Variantda282ac2ff0fbffa/ExplicitFailureOfInjectivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e6d05db-8324-14a5-4280-3c055d4ab3bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quantization_not_declared_injective :
    ¬ Function.Injective
      (fun X : SpectralTensor ⟨1, 1⟩ 1 =>
        quantizeChannel unitThresholdQuantizer 0 X) := by
  intro hinj
  let X0 : SpectralTensor ⟨1, 1⟩ 1 :=
    SpectralTensor.constant ⟨1, 1⟩ (fun _ => 0)
  let Xq : SpectralTensor ⟨1, 1⟩ 1 :=
    SpectralTensor.constant ⟨1, 1⟩ (fun _ => (1 / 4 : ℝ))
  have hq :
      quantizeChannel unitThresholdQuantizer 0 X0 =
        quantizeChannel unitThresholdQuantizer 0 Xq := by
    apply BinaryMatrix.ext_entries
    intro i j
    fin_cases i
    fin_cases j
    norm_num [quantizeChannel, unitThresholdQuantizer, X0, Xq]
  have hx := hinj hq
  have hv := congrArg
    (fun X : SpectralTensor ⟨1, 1⟩ 1 =>
      X.value (⟨0, by decide⟩, ⟨0, by decide⟩) 0) hx
  simp [X0, Xq] at hv

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.ThresholdMatrixMaps.Variantda282ac2ff0fbffa
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/ThresholdMatrixMaps/Variantda282ac2ff0fbffa/ExplicitFailureOfInjectivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/FunctionTypes/ThresholdMatrixMaps/Variantda282ac2ff0fbffa/ExplicitFailureOfInjectivity.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d7a8774f395e3b3f0396b0d3ede72548c414fb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
