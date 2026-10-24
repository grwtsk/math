# omitted_unit_column_is_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0df18a4c-15ba-dae3-35df-268a65a65c66",
  "kind": "theorem",
  "lexical_name": "omitted_unit_column_is_false",
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
  "slug": "omitted-unit-column-is-false--6ff42f3204b4a76bcd70ab6d",
  "source": {
    "blob": "cbcdd4ed54d33cbfbcc3d2c970e1f080a61435ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variant2d2b36ba2d946f7160c0ac0ca3e1ae7c03707e575b4056407762501e26c5d3ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff42f3204b4a76bcd70ab6d6769cb7b523c878ff46e8b565e0b0dca585a3c8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variant2d2b36ba2d946f7160c0ac0ca3e1ae7c03707e575b4056407762501e26c5d3ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0df18a4c-15ba-dae3-35df-268a65a65c66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omitted_unit_column_is_false :
    offDiagonal (Finset.Ioc 1 2)
      (fun m n ↦ vonMangoldt m * atomWeight 2 (m * n)) (fun _ ↦ 1) ≠
    rectangle (Finset.Icc 1 2)
      (fun m n ↦ vonMangoldt m * atomWeight 2 (m * n)) (fun _ ↦ 1) := by
  have hi : Finset.Ioc 1 2 = ({2} : Finset ℕ) := by decide
  have hc : Finset.Icc 1 2 = ({1, 2} : Finset ℕ) := by decide
  have hp : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  convert (ne_of_lt hp) using 1 <;>
    norm_num [offDiagonal, rectangle, diagonal, hi, hc, atomWeight,
      vonMangoldt_apply_prime Nat.prime_two]

/-- On a supported synthetic four-product carrier, the deleted diagonal is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variant2d2b36ba2d946f7160c0ac0ca3e1ae7c03707e575b4056407762501e26c5d3ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variant2d2b36ba2d946f7160c0ac0ca3e1ae7c03707e575b4056407762501e26c5d3ab.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbcdd4ed54d33cbfbcc3d2c970e1f080a61435ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
