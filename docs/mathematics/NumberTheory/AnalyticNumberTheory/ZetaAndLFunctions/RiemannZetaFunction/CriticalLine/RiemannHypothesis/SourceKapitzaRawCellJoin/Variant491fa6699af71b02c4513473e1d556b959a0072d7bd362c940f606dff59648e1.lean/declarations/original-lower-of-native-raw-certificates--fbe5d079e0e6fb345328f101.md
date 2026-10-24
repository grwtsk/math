# original_lower_of_native_raw_certificates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61ddb550-2a5c-1998-e522-c8084e0b9969",
  "kind": "theorem",
  "lexical_name": "original_lower_of_native_raw_certificates",
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
  "slug": "original-lower-of-native-raw-certificates--fbe5d079e0e6fb345328f101",
  "source": {
    "blob": "4efb7784db57887dd1caba73c49b078b5deafe28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 237,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant491fa6699af71b02c4513473e1d556b959a0072d7bd362c940f606dff59648e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbe5d079e0e6fb345328f1019f5414e082142dac1c63233331585d28a4d91486",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant491fa6699af71b02c4513473e1d556b959a0072d7bd362c940f606dff59648e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61ddb550-2a5c-1998-e522-c8084e0b9969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_lower_of_native_raw_certificates (S : ℝ → ℕ → ℝ → ℝ)
    (e : ℝ → ℕ → ℝ) (R B : ℝ) (hR : 1 ≤ R)
    (hlocal : ∀ A : ℝ, R ≤ A → ∀ j < rawCutoff A,
      rawCellReadout A j +
        S A (j + 1) (physicalMultiplier A j * physicalState A j + physicalForcing A j) -
          S A j (physicalState A j) ≤ e A j)
    (hpayment : RawTerminalPaymentBound S e R B) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R) (archimedeanMultiplier 0 - 2 - 2 * B) ≤
        sourceQuadraticValue explicitSecondDerivative A :=
  original_lower_of_raw_certificates S e R B hR
    (fun A hRA => rawCellReconstruction_native A (hR.trans hRA)) hlocal hpayment

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant491fa6699af71b02c4513473e1d556b959a0072d7bd362c940f606dff59648e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant491fa6699af71b02c4513473e1d556b959a0072d7bd362c940f606dff59648e1.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4efb7784db57887dd1caba73c49b078b5deafe28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
