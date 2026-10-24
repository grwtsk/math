# columnTest_at_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01d757b3-5570-caa8-92d6-429c8480a2b7",
  "kind": "theorem",
  "lexical_name": "columnTest_at_upper_zero",
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
  "slug": "columntest-at-upper-zero--f4f62bc0ff94aa30f9583a76",
  "source": {
    "blob": "2550ae973f60e84a90581258d54841866dc9d5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4f62bc0ff94aa30f9583a769f31df70d0f4cd9a7d0588db984cfe4fa6d5d1cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01d757b3-5570-caa8-92d6-429c8480a2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem columnTest_at_upper_zero (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : 2 ≤ k) :
    columnTest A k (Real.log (sourceKernelCutoff A : ℝ)) = 0 := by
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 1 ≤ sourceKernelCutoff A := hU.trans hUN
  have hcut : sourceKernelCutoff A < sourceKernelCutoff A * k := by nlinarith
  have hw := sourcePlainWeight_zero_of_cutoff_lt A hA
    (sourceKernelCutoff A * k) hcut
  have ht := columnTest_at_natural A (sourceKernelCutoff A) k (by omega) (by omega)
  rw [hw] at ht
  have hN0 : (sourceKernelCutoff A : ℝ) ≠ 0 := by
    exact_mod_cast (by omega : sourceKernelCutoff A ≠ 0)
  have he := (div_eq_iff hN0).mp ht
  simpa using he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2550ae973f60e84a90581258d54841866dc9d5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
