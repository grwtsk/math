# exponential_series_through_boundary_calculus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ebc70a6d29de26f4c24faa5e88f72668f100156",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25cea629-5005-33dc-41ac-36050f160c11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71012b29-c78e-6772-8446-8061b745c839",
  "kind": "theorem",
  "lexical_name": "exponential_series_through_boundary_calculus",
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
  "slug": "exponential-series-through-boundary-calculus--f907ce9e9159b8c0bfc682a9",
  "source": {
    "blob": "0ebc70a6d29de26f4c24faa5e88f72668f100156",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 93,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f907ce9e9159b8c0bfc682a93d93e5f975bb55550700a06e89c4aaff2adb5a6f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71012b29-c78e-6772-8446-8061b745c839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_series_through_boundary_calculus
    (z : ℂ) :
    Summable
      (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ)) ∧
      HasSum
        (fun n : ℕ => z ^ n / (Nat.factorial n : ℂ))
        (Complex.exp z) ∧
      AnalyticAt ℂ Complex.exp z ∧
      DifferentiableAt ℂ Complex.exp z :=
  mathlib_proof_through_boundary_calculus
    (exponentialSeriesMathlibProofCertificate z)

/-- Direct lower-layer ownership of the exponential-series claim is
impossible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ExponentialSeries/Variante4eb6df4e784d3cc7dc23fb1d2d8087ece6d8c0fc74cc85b7540fbc55117981e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ebc70a6d29de26f4c24faa5e88f72668f100156` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
