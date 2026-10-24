# has_prime_in_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51a3514a-7663-d52d-6b82-d96497edc245",
  "kind": "theorem",
  "lexical_name": "has_prime_in_interval",
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
  "slug": "has-prime-in-interval--a4fa2635346a573ad4cf226f",
  "source": {
    "blob": "b621f1aa334bf7d3760b92c847894510fa068a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1188,
    "line": 1173,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4fa2635346a573ad4cf226ffa7b776d78ddcb835deec21cb26d2407b6a00cab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a3514a-7663-d52d-6b82-d96497edc245`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1173–1188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_prime_in_interval (x : ℝ) (hx : x > exp 60) :
    HasPrimeInInterval (x*(1-1/1966196911)) (x/1966196911) := by
  obtain ⟨p, hp, hlo, hhi⟩ := GourdonDemichel2004.has_prime_in_interval x hx
  exact ⟨p, hp, by nlinarith [exp_pos 60], by nlinarith⟩

end PrimeGaps2014

namespace PrimeGaps2024

@[blueprint
  "thm:prime_gaps_2024"
  (title := "Prime Gaps 2024")
  (statement := /-- If $x > \exp(60)$, then there is a prime in the interval
  \[ \left( x\left(1 - \frac{1}{76900000000}\right), x \right]. \]
  -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variantdf0cc5cdc87c1f6277b620577206ad231a045643409701af4a15f869c1341795.lean#L1173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b621f1aa334bf7d3760b92c847894510fa068a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
