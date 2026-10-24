# gammaFactor_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc3d65d2-c37f-7d57-8acb-22789555c129",
  "kind": "theorem",
  "lexical_name": "gammaFactor_conj",
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
  "slug": "gammafactor-conj--228445176d6ae3f35372d857",
  "source": {
    "blob": "dc909a7c58a4cc1245d24ae92b9725a8848ba7f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 79,
    "path": "GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:228445176d6ae3f35372d857aa9c2900ae0c1a3f4e2d36c688e9e5d5d3b5c2e6",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc3d65d2-c37f-7d57-8acb-22789555c129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaFactor_conj (chi : PrimitiveCharacter) (s : ℂ) :
    gammaFactor chi (conj s) = conj (gammaFactor chi s) := by
  have base_arg : ((conductorScale chi : ℝ) : ℂ).arg ≠ Real.pi := by
    rw [Complex.arg_ofReal_of_nonneg (le_of_lt (conductorScale_pos chi))]
    exact Real.pi_ne_zero.symm
  have argument_conj :
      (conj s + parityScalar chi) / 2 =
        conj ((s + parityScalar chi) / 2) := by
    simp only [starRingEnd_apply]
    rw [star_div₀, star_add]
    norm_num [parityScalar, Complex.star_def]
  unfold gammaFactor
  rw [argument_conj, Complex.cpow_conj _ _ base_arg,
    Complex.Gamma_conj]
  simp [map_mul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ClassicalFunctions/GammaFunction/ConductorScaledGammaData/Variante7f57c3fa71731eb/GammaScalarsRotorsAndWholeCanonicalPackage.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc909a7c58a4cc1245d24ae92b9725a8848ba7f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
