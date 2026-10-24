# frobSq_hat'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0bf042d-08eb-a8ec-6a4d-af4a859a47fe",
  "kind": "lemma",
  "lexical_name": "frobSq_hat'",
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
  "slug": "frobsq-hat--99b576bcf946344d715a8a8a",
  "source": {
    "blob": "32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 300,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99b576bcf946344d715a8a8a45bebb7480b051617d21c5c2ff97d6ca174b20fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0bf042d-08eb-a8ec-6a4d-af4a859a47fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma frobSq_hat' (P : Params) (T : ℝ) {m : Type*} [Fintype m] (M : Matrix m m ℂ) :
    frobSq (P.hat T M) = ((P.a T * P.L T ^ 2)⁻¹) ^ 2 * frobSq M := by
  rw [Assembly.hat_eq, Assembly.frobSq_smul_ofReal]

set_option maxHeartbeats 400000 in
/-- **[XF′ Lemma 5.1], for any entrywise main term** M_T with the XiEF/WEF error shape:
‖G_{kl} − M_{kl}‖ ≤ C T^{−δ}(1/max(1,Δ²_{kl}) + 1/T) for T ≥ T₀  ⇒  G − M is HatNegligible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
