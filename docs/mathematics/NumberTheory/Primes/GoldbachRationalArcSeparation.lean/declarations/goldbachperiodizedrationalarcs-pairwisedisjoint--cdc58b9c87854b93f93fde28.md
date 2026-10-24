# goldbachPeriodizedRationalArcs_pairwiseDisjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:485d8452-c39c-97e7-5153-37dcf5801412",
  "kind": "theorem",
  "lexical_name": "goldbachPeriodizedRationalArcs_pairwiseDisjoint",
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
  "slug": "goldbachperiodizedrationalarcs-pairwisedisjoint--cdc58b9c87854b93f93fde28",
  "source": {
    "blob": "d92f4cfddbfef7a5784ef4bb2784477f4a272269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 354,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdc58b9c87854b93f93fde287223261737f6b3e15c93faf44605dba21837e45e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:485d8452-c39c-97e7-5153-37dcf5801412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachPeriodizedRationalArcs_pairwiseDisjoint
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) :
    Set.Pairwise (↑(goldbachRationalArcIndices Q) : Set (ℕ × ℕ))
      (Disjoint on fun (aq : ℕ × ℕ) =>
        goldbachPeriodizedRationalArc Q N aq.1 aq.2) := by
  intro aq haq bq hbq hne
  rcases aq with ⟨a, q⟩
  rcases bq with ⟨b, r⟩
  exact goldbachPeriodizedRationalArcs_disjoint
    haq hbq hne hscale

end
end GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92f4cfddbfef7a5784ef4bb2784477f4a272269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
