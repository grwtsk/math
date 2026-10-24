# actual_shortPlain_tight_uniform_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13dd8182-02e6-7931-106e-b34044491d1c",
  "kind": "theorem",
  "lexical_name": "actual_shortPlain_tight_uniform_error",
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
  "slug": "actual-shortplain-tight-uniform-error--12b27aa705904f2ce8e2100b",
  "source": {
    "blob": "9be981cb2de46ab35eb10841639a69d313bc26d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant0bb2915e246c71153eff42800932f579aa1ad5492047e64cb4e95c6f4cd38d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12b27aa705904f2ce8e2100b7671120274cf61624ee4ddbff22b02623568622d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant0bb2915e246c71153eff42800932f579aa1ad5492047e64cb4e95c6f4cd38d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13dd8182-02e6-7931-106e-b34044491d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_shortPlain_tight_uniform_error (A : ℝ) (hA : 1 ≤ A) :
    |shortPlainSamplingError A| ≤ 64 * (Real.log 4 + 4) * actualBeta := by
  have hE : 0 ≤ 16 * actualBeta := by norm_num [actualBeta]
  have he := shortPlain_error_uniform_le_of_sampling_error hA hE
    (sourcePlainSamplingMainTerm A) (fun d hd m hm => by
      have hd1 : 1 ≤ d := (Finset.mem_Icc.mp hd).1
      have hm1 : 1 ≤ m := (Finset.mem_Icc.mp hm).1
      have hp1 : (1 : ℝ) ≤ (d * m : ℕ) := by
        exact_mod_cast Nat.mul_le_mul hd1 hm1
      exact sourcePlainKernel_sub_mainTerm_abs_le hA hp1)
  calc
    _ ≤ 4 * (Real.log 4 + 4) * (16 * actualBeta) := he
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant0bb2915e246c71153eff42800932f579aa1ad5492047e64cb4e95c6f4cd38d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant0bb2915e246c71153eff42800932f579aa1ad5492047e64cb4e95c6f4cd38d70.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be981cb2de46ab35eb10841639a69d313bc26d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
