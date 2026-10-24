# twinSignedDivisorResidual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5aa921d0386997ba01dc0c151dcf6804457674ce47ca6395b0a4ae26756996c7",
  "kind": "def",
  "lexical_name": "twinSignedDivisorResidual",
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
  "slug": "twinsigneddivisorresidual--35e6af4cd71f1aeb8131a581",
  "source": {
    "blob": "bc10a16ce1fc63a2289d045f88f20d7e6855f5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 141,
    "path": "GRWTSK/NumberTheory/Primes/TwinMangoldtExpansion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35e6af4cd71f1aeb8131a58129b5396d6bdbe5b9f15d8544ea8678b80775b726",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/TwinMangoldtExpansion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5aa921d0386997ba01dc0c151dcf6804457674ce47ca6395b0a4ae26756996c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twinSignedDivisorResidual
    (D X : ℕ) : ℝ := by
  classical
  exact ∑ n ∈ Finset.Icc 1 X,
    ∑ de ∈ n.divisorsAntidiagonal,
      ∑ fg ∈ (n + 2).divisorsAntidiagonal,
        if TwinShiftTwoCompatible de.1 fg.1 ∧
            ¬ (de.1 ≤ D ∧ fg.1 ≤ D) then
          twinDivisorKernelTerm de fg
        else 0

/-- Exact small-divisor plus signed-residual decomposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/TwinMangoldtExpansion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/TwinMangoldtExpansion.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc10a16ce1fc63a2289d045f88f20d7e6855f5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
