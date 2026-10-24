# lseries_one_convolution_mobius_eq_delta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fdc210f71905814fcd3fed69e4395429f805a7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68061c3d-7ccf-4871-537f-72e521d0511a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2037656-dd2c-ad2c-b3e3-243b70b3c921",
  "kind": "theorem",
  "lexical_name": "lseries_one_convolution_mobius_eq_delta",
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
  "slug": "lseries-one-convolution-mobius-eq-delta--fd49d6e32bbd07bd184d2b8e",
  "source": {
    "blob": "4fdc210f71905814fcd3fed69e4395429f805a7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd49d6e32bbd07bd184d2b8ec9d09700273807fdb55f5031c65a490674e85aaf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2037656-dd2c-ad2c-b3e3-243b70b3c921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lseries_one_convolution_mobius_eq_delta :
    LSeries.convolution oneArithFnComplex mobiusComplex = LSeries.delta := by
  calc
    LSeries.convolution oneArithFnComplex mobiusComplex
        =
          LSeries.convolution
            (⇑(ζ : ArithmeticFunction Complex))
            (⇑(↑μ : ArithmeticFunction Complex)) := by
            apply LSeries.convolution_congr
            · intro n hn
              simp [oneArithFnComplex, ArithmeticFunction.zeta_apply, hn]
            · intro n hn
              rfl
    _ = ⇑((ζ : ArithmeticFunction Complex) * (↑μ : ArithmeticFunction Complex)) :=
            ArithmeticFunction.coe_mul
              (ζ : ArithmeticFunction Complex)
              (↑μ : ArithmeticFunction Complex)
    _ = ⇑(1 : ArithmeticFunction Complex) := by
            rw [ArithmeticFunction.coe_zeta_mul_coe_moebius]
    _ = LSeries.delta := by
            funext n
            simp [LSeries.delta, ArithmeticFunction.one_apply]

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fdc210f71905814fcd3fed69e4395429f805a7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
