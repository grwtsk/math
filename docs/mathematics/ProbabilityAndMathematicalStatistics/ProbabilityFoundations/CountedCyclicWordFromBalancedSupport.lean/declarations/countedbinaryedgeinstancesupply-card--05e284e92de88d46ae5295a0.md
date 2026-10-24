# countedBinaryEdgeInstanceSupply_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:106ae0ac-f558-46fe-76db-04c3881cf33e",
  "kind": "theorem",
  "lexical_name": "countedBinaryEdgeInstanceSupply_card",
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
  "slug": "countedbinaryedgeinstancesupply-card--05e284e92de88d46ae5295a0",
  "source": {
    "blob": "e876c60acbae068b23c1fb409bcb5f358aba6e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 44,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05e284e92de88d46ae5295a019a4d5799c3425fbe1204756f40d05481866d99a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:106ae0ac-f558-46fe-76db-04c3881cf33e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countedBinaryEdgeInstanceSupply_card (m : ℕ) (c : BinaryEdgeWord m → ℕ) :
    (countedBinaryEdgeInstanceSupply m c).card = countedBinaryEdgeTotal m c := by
  classical
  let : Fintype (CountedBinaryEdge m c) := by
    unfold CountedBinaryEdge
    infer_instance
  unfold countedBinaryEdgeInstanceSupply
  rw [Finset.card_univ]
  change Fintype.card ((w : BinaryEdgeWord m) × Fin (c w)) = ∑ w, c w
  simp only [Fintype.card_sigma, Fintype.card_fin]

section BalancedConnected

variable (m : ℕ) (c : BinaryEdgeWord m → ℕ)
variable (hN : 0 < countedBinaryEdgeTotal m c)
variable (hbalance : ∀ x : Fin m → Bool,
  ((countedBinaryEdgeInstanceSupply m c).val.map
    (fun e => binaryEdgePrefix m (countedEdgeLabel m c e))).count x =
  ((countedBinaryEdgeInstanceSupply m c).val.map
    (fun e => binaryEdgeSuffix m (countedEdgeLabel m c e))).count x)
variable (hconnected :
  ∀ x ∈ incidentEdgeSupport
      (tail := fun e => binaryEdgePrefix m (countedEdgeLabel m c e))
      (head := fun e => binaryEdgeSuffix m (countedEdgeLabel m c e))
      (countedBinaryEdgeInstanceSupply m c),
    ∀ y ∈ incidentEdgeSupport
      (tail := fun e => binaryEdgePrefix m (countedEdgeLabel m c e))
      (head := fun e => binaryEdgeSuffix m (countedEdgeLabel m c e))
      (countedBinaryEdgeInstanceSupply m c),
      Relation.ReflTransGen
        (undirectedEdgeAdjacency
          (tail := fun e => binaryEdgePrefix m (countedEdgeLabel m c e))
          (head := fun e => binaryEdgeSuffix m (countedEdgeLabel m c e))
          (countedBinaryEdgeInstanceSupply m c)) x y)

include hN hbalance hconnected

/-- Genuine existence of a cyclic binary word with the exact original
counts, from balance and weak connectivity of incident edge support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CountedCyclicWordFromBalancedSupport.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e876c60acbae068b23c1fb409bcb5f358aba6e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
