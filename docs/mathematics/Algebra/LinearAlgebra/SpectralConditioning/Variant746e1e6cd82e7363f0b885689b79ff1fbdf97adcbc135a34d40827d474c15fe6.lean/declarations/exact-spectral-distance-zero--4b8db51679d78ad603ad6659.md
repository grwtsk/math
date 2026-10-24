# exact_spectral_distance_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a84cae76-fdfb-b032-2ded-a145230003f6",
  "kind": "theorem",
  "lexical_name": "exact_spectral_distance_zero",
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
  "slug": "exact-spectral-distance-zero--4b8db51679d78ad603ad6659",
  "source": {
    "blob": "5b5626c699e0574f7ef3e0302e0924afff1c2bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b8db51679d78ad603ad665955f76da2448a11a352536589a5a3a973761985cc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a84cae76-fdfb-b032-2ded-a145230003f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_spectral_distance_zero
    (conditioning :
      SpectralConditioningModulus Operator SpectralData)
    {left right : Operator}
    (equal : left = right) :
    nndist (conditioning.spectrum left)
      (conditioning.spectrum right) = 0 := by
  subst right
  simp

end SpectralConditioningModulus

/-- A certified uniform annihilation order for a nilpotent linear direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpectralConditioning/Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b5626c699e0574f7ef3e0302e0924afff1c2bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
