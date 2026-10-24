# isMulLeftInvariant_eq_smul_of_regular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f4b82b5-f5b1-e81d-8ec7-8742d9005722",
  "kind": "lemma",
  "lexical_name": "isMulLeftInvariant_eq_smul_of_regular",
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
  "slug": "ismulleftinvariant-eq-smul-of-regular--f50ca3d2575d5fe57bb99188",
  "source": {
    "blob": "cce80fab2e4f45ea1fa455657fb5e19d16580bfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 929,
    "line": 914,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f50ca3d2575d5fe57bb991880c04fed30cc766a1fb66892dde066bfcba00d6b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f4b82b5-f5b1-e81d-8ec7-8742d9005722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 914–929.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMulLeftInvariant_eq_smul_of_regular [LocallyCompactSpace G]
    (μ' μ : Measure G) [IsHaarMeasure μ] [IsMulLeftInvariant μ'] [Regular μ] [Regular μ'] :
    μ' = haarScalarFactor μ' μ • μ := by
  have A : ∀ U, IsOpen U → μ' U = (haarScalarFactor μ' μ • μ) U := by
    intro U hU
    rw [hU.measure_eq_iSup_isCompact, hU.measure_eq_iSup_isCompact]
    congr! 4 with K _KU K_comp
    exact measure_isMulLeftInvariant_eq_smul_of_ne_top μ' μ K_comp.measure_lt_top.ne
      K_comp.measure_lt_top.ne
  exact OuterRegular.ext_isOpen A

/-- **Uniqueness of left-invariant measures**:
Two Haar measures coincide up to a multiplicative constant in a second countable group. -/
@[to_additive isAddLeftInvariant_eq_smul
/-- **Uniqueness of left-invariant measures**:
Two additive Haar measures coincide up to a multiplicative constant in a second countable group. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variant80d234fce120d4f31262adfea4921442acf182da143fea8b4ef5de13292445ed.lean#L914).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce80fab2e4f45ea1fa455657fb5e19d16580bfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
