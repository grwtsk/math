# countedCyclicEulerCertificateOfClosedWalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1551c725e9da24e997ff5dc785df3ac4cb3f8b9a4fa8b0734ee00beca8e6aab6",
  "kind": "def",
  "lexical_name": "countedCyclicEulerCertificateOfClosedWalk",
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
  "slug": "countedcycliceulercertificateofclosedwalk--914bcf362746b16c14d574fd",
  "source": {
    "blob": "81984dea0d22c9687785538004aba8e21d26e0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 70,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:914bcf362746b16c14d574fdb4205b26c41458debced5d15bc7251d6b76e39c7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1551c725e9da24e997ff5dc785df3ac4cb3f8b9a4fa8b0734ee00beca8e6aab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def countedCyclicEulerCertificateOfClosedWalk
    {m : ℕ} {c : BinaryEdgeWord m → ℕ} {a : Fin m → Bool}
    (hN : 0 < countedBinaryEdgeTotal m c)
    (p : CountedBinaryEdgeWalk m c a a)
    (hnodup : p.edges.Nodup) (hexhaustive : ∀ e, e ∈ p.edges) :
    CountedCyclicEulerCertificate m c hN where
  order := countedCyclicEdgeOrderOfClosedWalk p hnodup hexhaustive
  compatible i := by
    let hlen := countedBinaryEdgeWalk_length_eq_total p hnodup hexhaustive
    have hpositive : 0 < p.edges.length := by omega
    let i' : Fin p.edges.length := (finCongr hlen.symm) i
    have hcyclic := Walk.closed_get_cyclic p hpositive i'
    have hnext :
        (⟨(i'.val + 1) % p.edges.length, Nat.mod_lt _ hpositive⟩ : Fin p.edges.length) =
          (finCongr hlen.symm)
            (cyclicSuccessor (countedBinaryEdgeTotal m c) hN i) := by
      apply Fin.ext
      change (i.val + 1) % p.edges.length = (i.val + 1) % countedBinaryEdgeTotal m c
      rw [hlen]
    rw [hnext] at hcyclic
    exact hcyclic

/-- Exact original word counts follow from the already established
certificate/word equivalence, including arbitrarily many cyclic wraps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicEulerFromClosedWalk.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81984dea0d22c9687785538004aba8e21d26e0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
