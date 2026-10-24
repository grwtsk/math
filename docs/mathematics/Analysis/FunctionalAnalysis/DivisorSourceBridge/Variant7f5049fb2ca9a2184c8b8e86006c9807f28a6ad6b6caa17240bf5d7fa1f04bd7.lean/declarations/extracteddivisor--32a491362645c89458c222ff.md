# extractedDivisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b56ce8241e8ff3b187871c5d784105c028f68e3bbd774562da855d8c296b934a",
  "kind": "def",
  "lexical_name": "extractedDivisor",
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
  "slug": "extracteddivisor--32a491362645c89458c222ff",
  "source": {
    "blob": "85c8f3db51177904ee734a4c47a7597d0b76e5ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 25,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32a491362645c89458c222ff190c4c9ee3ddb089a8c41cdbe9f119119a64bc49",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b56ce8241e8ff3b187871c5d784105c028f68e3bbd774562da855d8c296b934a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extractedDivisor {N : ℕ} (s : FactorState.State N) : Divisor N :=
  ⟨FactorState.primeProduct s.extracted,
    (dvd_mul_left _ _).trans (dvd_of_eq s.conservation.symm)⟩

/-- The divisor representation keeps the complete, literal stored valuation map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85c8f3db51177904ee734a4c47a7597d0b76e5ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
