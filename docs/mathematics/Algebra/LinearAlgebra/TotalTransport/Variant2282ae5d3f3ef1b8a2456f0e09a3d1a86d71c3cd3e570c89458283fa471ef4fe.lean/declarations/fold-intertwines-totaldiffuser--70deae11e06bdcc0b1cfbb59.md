# fold_intertwines_totalDiffuser

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfa89c1d40aeeeed345de3fe5dab28a8520a3f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6484f82a-d340-4162-6e58-dbba8f5299cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be22b33a-6409-5274-4f40-dc94292d4237",
  "kind": "theorem",
  "lexical_name": "fold_intertwines_totalDiffuser",
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
  "slug": "fold-intertwines-totaldiffuser--70deae11e06bdcc0b1cfbb59",
  "source": {
    "blob": "bfa89c1d40aeeeed345de3fe5dab28a8520a3f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70deae11e06bdcc0b1cfbb593cbffc35ae9d301196d94af6394c37575980b624",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be22b33a-6409-5274-4f40-dc94292d4237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fold_intertwines_totalDiffuser
    (fold : FoldUnitary terrain)
    (spindle : FiniteOperator SpindleIndex SpindleIndex)
    (s : ℝ) :
    fold.liftedOperator *
        heatDiffuser (terrain.DAFTotalOperator spindle) s =
      heatDiffuser (terrain.DAFTotalOperator spindle) s *
        fold.liftedOperator := by
  let total := terrain.DAFTotalOperator spindle
  have commuteTotal : Commute fold.liftedOperator total :=
    fold.fold_intertwines_totalOperator spindle
  have commuteSquare : Commute fold.liftedOperator (total * total) := by
    calc
      fold.liftedOperator * (total * total) =
          (fold.liftedOperator * total) * total := by simp [mul_assoc]
      _ = (total * fold.liftedOperator) * total := by
        rw [commuteTotal.eq]
      _ = total * (fold.liftedOperator * total) := by simp [mul_assoc]
      _ = total * (total * fold.liftedOperator) := by rw [commuteTotal.eq]
      _ = (total * total) * fold.liftedOperator := by simp [mul_assoc]
  have scaledCommute :
      Commute fold.liftedOperator ((-(s : ℂ)) • (total * total)) :=
    commuteSquare.smul_right (-(s : ℂ))
  exact scaledCommute.exp_right.eq

/-- Matrix of the rank-one projection onto a coordinate vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TotalTransport/Variant2282ae5d3f3ef1b8a2456f0e09a3d1a86d71c3cd3e570c89458283fa471ef4fe.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa89c1d40aeeeed345de3fe5dab28a8520a3f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
