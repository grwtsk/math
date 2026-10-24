# transcendental_of_ne_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2b97d6f-0943-17e3-865c-ebcae4eb939f",
  "kind": "theorem",
  "lexical_name": "transcendental_of_ne_C",
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
  "slug": "transcendental-of-ne-c--2041ec0b484f38efb235fbfd",
  "source": {
    "blob": "6a4a0084c293320bd5041e8aadb87ebcb7de4b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Varianta4fca8790e7c3d9eaee91de552e0cd3e53d1400e4cad68a3a4074374033a292a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2041ec0b484f38efb235fbfd7bfe8bec1a2442b9dc1c402613baa4261bcac69c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntermediateField/Varianta4fca8790e7c3d9eaee91de552e0cd3e53d1400e4cad68a3a4074374033a292a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2b97d6f-0943-17e3-865c-ebcae4eb939f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transcendental_of_ne_C (hf : ¬∃ c, f = C c) : Transcendental K f := by
  intro H
  have := isAlgebraic_adjoin_simple H.isIntegral
  have tr : Algebra.Transcendental K K⟮X⟯ := by infer_instance
  rw [Algebra.transcendental_iff_not_isAlgebraic] at tr
  exact tr <| Algebra.IsAlgebraic.trans _ _ _ (alg := f.isAlgebraic_adjoin_simple_X' hf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntermediateField/Varianta4fca8790e7c3d9eaee91de552e0cd3e53d1400e4cad68a3a4074374033a292a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Varianta4fca8790e7c3d9eaee91de552e0cd3e53d1400e4cad68a3a4074374033a292a.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a4a0084c293320bd5041e8aadb87ebcb7de4b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
