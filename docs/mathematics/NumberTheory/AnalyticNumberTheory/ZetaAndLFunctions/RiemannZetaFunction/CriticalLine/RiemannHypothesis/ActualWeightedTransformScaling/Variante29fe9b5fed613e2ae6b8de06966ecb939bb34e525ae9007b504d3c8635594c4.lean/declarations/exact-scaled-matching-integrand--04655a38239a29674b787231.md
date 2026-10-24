# exact_scaled_matching_integrand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfb95f73-eee5-949d-6f28-037ea483dde0",
  "kind": "theorem",
  "lexical_name": "exact_scaled_matching_integrand",
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
  "slug": "exact-scaled-matching-integrand--04655a38239a29674b787231",
  "source": {
    "blob": "2dd3e1a8d1c5afa665b4fc5b07134ceb0c0b7672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variante29fe9b5fed613e2ae6b8de06966ecb939bb34e525ae9007b504d3c8635594c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04655a38239a29674b78723138a6982b60ac8e3b74c26c2bcb2b487f3aa59f9f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variante29fe9b5fed613e2ae6b8de06966ecb939bb34e525ae9007b504d3c8635594c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfb95f73-eee5-949d-6f28-037ea483dde0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_scaled_matching_integrand {Z : ℝ} (hZ : 0 < Z) (A a u : ℝ) :
    C A u * Real.exp (3 * u / 16) * inputAt A a Z (Z * Real.exp u) =
      Z ^ a * (|C A u| * Real.exp ((a + 3 / 16) * u)) := by
  have heq : Z * Real.exp u / Z = Real.exp u := by field_simp
  unfold inputAt
  rw [heq]
  calc
    _ = Z ^ a * (C A u * Real.exp (3 * u / 16) * matchedInput A a (Real.exp u)) := by ring
    _ = _ := by rw [exact_matching_integrand]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variante29fe9b5fed613e2ae6b8de06966ecb939bb34e525ae9007b504d3c8635594c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualWeightedTransformScaling/Variante29fe9b5fed613e2ae6b8de06966ecb939bb34e525ae9007b504d3c8635594c4.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dd3e1a8d1c5afa665b4fc5b07134ceb0c0b7672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
