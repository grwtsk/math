# actual_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdc5f380-60df-4e38-05e5-7050877d8f76",
  "kind": "theorem",
  "lexical_name": "actual_pairing",
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
  "slug": "actual-pairing--0576530bf7caf1744ddbc99b",
  "source": {
    "blob": "6c1a644729112f3c1f0e703cc817c34a37965a24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0576530bf7caf1744ddbc99bda795d8e5cb4233181654d5a4dc00ca0ce00ef72",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdc5f380-60df-4e38-05e5-7050877d8f76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_pairing (q : ComplexL2) (I : Finset ℕ) (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q I c, reflection (synthesis q I d)⟫_ℂ =
      pairing (reflectedMatrix q I) c d := by
  rw [synthesis_reflected_inner]
  simp only [pairing, dotProduct, Matrix.mulVec, Pi.star_apply, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- An arbitrary coefficient move has its actual signed defect, even if it
preserves some other positive metric. This is accounting, not an estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SignedDefect/Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c1a644729112f3c1f0e703cc817c34a37965a24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
