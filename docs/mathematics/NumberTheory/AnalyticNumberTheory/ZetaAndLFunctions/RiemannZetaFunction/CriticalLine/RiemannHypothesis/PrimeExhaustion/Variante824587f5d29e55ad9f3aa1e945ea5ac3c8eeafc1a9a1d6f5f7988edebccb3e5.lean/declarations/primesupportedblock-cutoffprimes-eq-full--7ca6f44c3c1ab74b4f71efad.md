# primeSupportedBlock_cutoffPrimes_eq_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5259618e-70a4-306a-0998-a273f699cde2",
  "kind": "theorem",
  "lexical_name": "primeSupportedBlock_cutoffPrimes_eq_full",
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
  "slug": "primesupportedblock-cutoffprimes-eq-full--7ca6f44c3c1ab74b4f71efad",
  "source": {
    "blob": "827ae744cd7b3c524636fb415e4a8a6a9664b333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variante824587f5d29e55ad9f3aa1e945ea5ac3c8eeafc1a9a1d6f5f7988edebccb3e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ca6f44c3c1ab74b4f71efad770a20bc7c05ba687b69f9f7c741766b3e3548af",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variante824587f5d29e55ad9f3aa1e945ea5ac3c8eeafc1a9a1d6f5f7988edebccb3e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5259618e-70a4-306a-0998-a273f699cde2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSupportedBlock_cutoffPrimes_eq_full (A : ℝ) :
    primeSupportedBlock A (cutoffPrimes ⌊Real.exp A⌋₊) =
      ∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          ThetaRemainder.thetaRemainder A (i * j) :=
  primeSupportedBlock_eq_full_of_contains_primes A _
    (fun p hp hn ↦ (mem_cutoffPrimes _ p).mpr ⟨hp, hn⟩)

/-- The complementary filtered set contributes zero only after every cutoff prime is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variante824587f5d29e55ad9f3aa1e945ea5ac3c8eeafc1a9a1d6f5f7988edebccb3e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variante824587f5d29e55ad9f3aa1e945ea5ac3c8eeafc1a9a1d6f5f7988edebccb3e5.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `827ae744cd7b3c524636fb415e4a8a6a9664b333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
