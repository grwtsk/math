# Matrix.isRepresentation.toEnd_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9470d5e2-8cd2-bfe0-de16-af78ec1b16b9",
  "kind": "theorem",
  "lexical_name": "Matrix.isRepresentation.toEnd_surjective",
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
  "slug": "matrix-isrepresentation-toend-surjective--cb9867637fbe886ec3e059e1",
  "source": {
    "blob": "4683f2f57a5b62ac279b45b4d785b0b8a898a117",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 217,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb9867637fbe886ec3e059e1c260b23ba73be05edf604c34cd35808c30187d13",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9470d5e2-8cd2-bfe0-de16-af78ec1b16b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.isRepresentation.toEnd_surjective :
    Function.Surjective (Matrix.isRepresentation.toEnd R b hb) := by
  intro f
  obtain ⟨M, e, -⟩ := Matrix.isRepresentation.toEnd_exists_mem_ideal R b hb f ⊤ (by simp)
  exact ⟨M, e⟩
#align matrix.is_representation.to_End_surjective Matrix.isRepresentation.toEnd_surjective

end

/-- The **Cayley-Hamilton Theorem** for f.g. modules over arbitrary rings states that for each
`R`-endomorphism `φ` of an `R`-module `M` such that `φ(M) ≤ I • M` for some ideal `I`, there
exists some `n` and some `aᵢ ∈ Iⁱ` such that `φⁿ + a₁ φⁿ⁻¹ + ⋯ + aₙ = 0`.

This is the version found in Eisenbud 4.3, which is slightly weaker than Matsumura 2.1
(this lacks the constraint on `n`), and is slightly stronger than Atiyah-Macdonald 2.4.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant77f21f7c6c60842f9235daf19be3b68d780b648c4e6694b99d3911ffe3cdcb10.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4683f2f57a5b62ac279b45b4d785b0b8a898a117` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
