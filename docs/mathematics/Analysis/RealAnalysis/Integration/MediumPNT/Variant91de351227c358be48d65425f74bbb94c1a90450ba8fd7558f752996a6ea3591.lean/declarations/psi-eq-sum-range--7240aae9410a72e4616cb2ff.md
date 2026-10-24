# psi_eq_sum_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf488209-d4c2-5b45-03f0-a22416bac91c",
  "kind": "theorem",
  "lexical_name": "psi_eq_sum_range",
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
  "slug": "psi-eq-sum-range--7240aae9410a72e4616cb2ff",
  "source": {
    "blob": "0521e46e401f1ba077b794c7548f8221dc138003",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant91de351227c358be48d65425f74bbb94c1a90450ba8fd7558f752996a6ea3591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7240aae9410a72e4616cb2ff8280bebba7459c31f01e3cfaabc6e8382705f81d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant91de351227c358be48d65425f74bbb94c1a90450ba8fd7558f752996a6ea3591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf488209-d4c2-5b45-03f0-a22416bac91c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_eq_sum_range (x : ℝ) :
    ψ x = ∑ n ∈ Finset.range (⌊x⌋₊ + 1), Λ n := by
  rw [psi_eq_sum_Icc, Nat.range_succ_eq_Icc_zero]

end Chebyshev

@[blueprint "ChebyshevPsi"
  (title := "ChebyshevPsi")
  (statement := /--
  The (second) Chebyshev Psi function is defined as
  $$
  \psi(x) := \sum_{n \le x} \Lambda(n),
  $$
  where $\Lambda(n)$ is the von Mangoldt function.
  -/)
  (latexEnv := "definition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant91de351227c358be48d65425f74bbb94c1a90450ba8fd7558f752996a6ea3591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant91de351227c358be48d65425f74bbb94c1a90450ba8fd7558f752996a6ea3591.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0521e46e401f1ba077b794c7548f8221dc138003` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
