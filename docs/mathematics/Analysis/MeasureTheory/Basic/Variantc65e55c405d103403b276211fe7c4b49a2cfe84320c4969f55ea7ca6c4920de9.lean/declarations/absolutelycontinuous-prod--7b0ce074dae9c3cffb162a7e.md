# AbsolutelyContinuous.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0cc028e-144b-e744-b56a-782c09d95e4d",
  "kind": "theorem",
  "lexical_name": "AbsolutelyContinuous.prod",
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
  "slug": "absolutelycontinuous-prod--7b0ce074dae9c3cffb162a7e",
  "source": {
    "blob": "7c2531ac0ab1b69ddc59f9602824950bb600e6e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 447,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b0ce074dae9c3cffb162a7edc9ec45e7c68c9ffae17615bf4bde4df72fd9844",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0cc028e-144b-e744-b56a-782c09d95e4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AbsolutelyContinuous.prod [SigmaFinite ν'] (h1 : μ ≪ μ') (h2 : ν ≪ ν') :
    μ.prod ν ≪ μ'.prod ν' := by
  refine' AbsolutelyContinuous.mk fun s hs h2s => _
  rw [measure_prod_null hs] at h2s ⊢
  exact (h2s.filter_mono h1.ae_le).mono fun _ h => h2 h
#align measure_theory.measure.absolutely_continuous.prod MeasureTheory.Measure.AbsolutelyContinuous.prod

/-- Note: the converse is not true. For a counterexample, see
  Walter Rudin *Real and Complex Analysis*, example (c) in section 8.9. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c2531ac0ab1b69ddc59f9602824950bb600e6e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
