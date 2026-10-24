# exists_cyclicBinaryWord_of_closed_exhaustive_walk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9e95cdb-ca0e-0ea6-8edd-2ba0a27701d0",
  "kind": "theorem",
  "lexical_name": "exists_cyclicBinaryWord_of_closed_exhaustive_walk",
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
  "slug": "exists-cyclicbinaryword-of-closed-exhaustive-walk--6f491d4027bba598aaff49c7",
  "source": {
    "blob": "81984dea0d22c9687785538004aba8e21d26e0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f491d4027bba598aaff49c7cf7d2208bb62f2a5ebbde005fe8b4e5a8594dc36",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e95cdb-ca0e-0ea6-8edd-2ba0a27701d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_cyclicBinaryWord_of_closed_exhaustive_walk
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {a : Fin m → Bool}
    (hN : 0 < countedBinaryEdgeTotal m c)
    (p : CountedBinaryEdgeWalk m c a a)
    (hnodup : p.edges.Nodup) (hexhaustive : ∀ e, e ∈ p.edges) :
    ∃ x : CyclicBinaryWord (countedBinaryEdgeTotal m c),
      ∀ w, cyclicBinaryBlockCount m (countedBinaryEdgeTotal m c) hN x w = c w :=
  (countedCyclicEulerCertificate_nonempty_iff m c hN).mp
    ⟨countedCyclicEulerCertificateOfClosedWalk hN p hnodup hexhaustive⟩

/-- Actual exhaustive closed walks realize the original finite block counts.
This theorem assumes the walk itself; it asserts no Euler existence result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81984dea0d22c9687785538004aba8e21d26e0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
