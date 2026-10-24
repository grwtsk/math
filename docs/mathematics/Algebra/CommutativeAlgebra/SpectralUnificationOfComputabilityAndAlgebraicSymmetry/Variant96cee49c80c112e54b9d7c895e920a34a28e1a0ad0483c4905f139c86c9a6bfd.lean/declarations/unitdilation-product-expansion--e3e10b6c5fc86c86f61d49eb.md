# unitDilation_product_expansion

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
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4e38b06-318c-1243-ffaa-eaf295dad3e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:735c555d-4fb0-e72e-0c9d-f77062e339be",
  "kind": "theorem",
  "lexical_name": "unitDilation_product_expansion",
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
  "slug": "unitdilation-product-expansion--e3e10b6c5fc86c86f61d49eb",
  "source": {
    "blob": "06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 94,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3e10b6c5fc86c86f61d49ebaf98969f836f85cccdcceaf8696a5b4880f888e9",
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

Occurrence: `result:735c555d-4fb0-e72e-0c9d-f77062e339be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitDilation_product_expansion (r v x : ℝ) :
    unitDilation r x * unitDilation r (x - v) =
    (
    (-7168 * r^2 * v^6 + 15360 * r^2 * v^4 - 9216 * r^2 * v^2 + 1024 * r^2 + 32 * r * v^8 - 352 *
      r * v^6 + 672 * r * v^4 - 416 * r * v^2 + 64 * r + v^8 - 4 * v^6 + 6 * v^4 - 4 * v^2 + 1) +
    (43008 * r^2 * v^5 - 61440 * r^2 * v^3 + 18432 * r^2 * v - 256 * r * v^7 + 2112 * r * v^5 -
      2688 * r * v^3 + 832 * r * v - 8 * v^7 + 24 * v^5 - 24 * v^3 + 8 * v) * x +
    (64512 * r^2 * v^6 - 245760 * r^2 * v^4 + 175104 * r^2 * v^2 - 18432 * r^2 - 288 * r * v^8 +
      2944 * r * v^6 - 8928 * r * v^4 + 6336 * r * v^2 - 832 * r - 4 * v^8 + 44 * v^6 - 84 * v^4 +
      52 * v^2 - 8) * x^2 +
    (-387072 * r^2 * v^5 + 696320 * r^2 * v^3 - 227328 * r^2 * v + 2304 * r * v^7 - 14080 * r *
      v^5 + 21632 * r * v^3 - 7296 * r * v + 32 * v^7 - 152 * v^5 + 176 * v^3 - 56 * v) * x^3 +
    (-107520 * r^2 * v^6 + 1198080 * r^2 * v^4 - 1075200 * r^2 * v^2 + 113664 * r^2 + 480 * r *
      v^8 - 11328 * r * v^6 + 38720 * r * v^4 - 30816 * r * v^2 + 3648 * r + 6 * v^8 - 136 * v^6 +
      346 * v^4 - 228 * v^2 + 28) * x^4 +
    (645120 * r^2 * v^5 - 2211840 * r^2 * v^3 + 872448 * r^2 * v - 3840 * r * v^7 + 35712 * r *
      v^5 - 65792 * r * v^3 + 24000 * r * v - 48 * v^7 + 368 * v^5 - 520 * v^3 + 168 * v) * x^5 +
    (50176 * r^2 * v^6 - 1720320 * r^2 * v^4 + 2414592 * r^2 * v^2 - 290816 * r^2 - 224 * r * v^8
      + 15232 * r * v^6 - 72384 * r * v^4 + 68224 * r * v^2 - 8000 * r - 4 * v^8 + 184 * v^6 - 664
      * v^4 + 500 * v^2 - 56) * x^6 +
    (-301056 * r^2 * v^5 + 2580480 * r^2 * v^3 - 1437696 * r^2 * v + 1792 * r * v^7 - 37632 * r *
      v^5 + 94464 * r * v^3 - 39680 * r * v + 32 * v^7 - 432 * v^5 + 800 * v^3 - 280 * v) * x^7 +
    (752640 * r^2 * v^4 - 2257920 * r^2 * v^2 + 359424 * r^2 - 6496 * r * v^6 + 60960 * r * v^4 -
      76896 * r * v^2 + 9920 * r + v^8 - 116 * v^6 + 666 * v^4 - 620 * v^2 + 70) * x^8 +
    (-1003520 * r^2 * v^3 + 1075200 * r^2 * v + 13888 * r * v^5 - 64640 * r * v^3 + 35520 * r * v
      - 8 * v^7 + 248 * v^5 - 680 * v^3 + 280 * v) * x^9 +
    (752640 * r^2 * v^2 - 215040 * r^2 - 19040 * r * v^4 + 43200 * r * v^2 - 7104 * r + 28 * v^6 -
      340 * v^4 + 444 * v^2 - 56) * x^10 +
    (-301056 * r^2 * v + 17024 * r * v^3 - 16512 * r * v - 56 * v^5 + 304 * v^3 - 168 * v) * x^11 +
    (50176 * r^2 - 9632 * r * v^2 + 2752 * r + 70 * v^4 - 172 * v^2 + 28) * x^12 +
    (3136 * r * v - 56 * v^3 + 56 * v) * x^13 +
    (-448 * r + 28 * v^2 - 8) * x^14 +
    (-8 * v) * x^15 +
    (1) * x^16
  ) / 16 := by
  dsimp [unitDilation, unitSecond, unitBump]
  ring

/-- The order-0 polynomial in the unit displacement variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant96cee49c80c112e54b9d7c895e920a34a28e1a0ad0483c4905f139c86c9a6bfd.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06df97e6f1c69fe6799fdede8d2acbf8cd8db8b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
