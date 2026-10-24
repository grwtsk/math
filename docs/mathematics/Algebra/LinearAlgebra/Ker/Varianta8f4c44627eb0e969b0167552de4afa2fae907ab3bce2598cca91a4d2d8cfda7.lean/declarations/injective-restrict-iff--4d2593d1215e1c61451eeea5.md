# injective_restrict_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e83b839e-b7e7-ce48-8a38-2076b76b7c25",
  "kind": "theorem",
  "lexical_name": "injective_restrict_iff",
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
  "slug": "injective-restrict-iff--4d2593d1215e1c61451eeea5",
  "source": {
    "blob": "27da0e61bf7ff14b5f0ac2660efa451939bb4e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 215,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d2593d1215e1c61451eeea5d2be499ad0ea70d6c23fcab6acab6a1132df8a8e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e83b839e-b7e7-ce48-8a38-2076b76b7c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_restrict_iff {p : Submodule R M} {q : Submodule R₂ M₂} {f : M →ₛₗ[τ₁₂] M₂}
    (hf : ∀ x ∈ p, f x ∈ q) : Injective (f.restrict hf) ↔ Disjoint p (ker f) := by
  simp [← ker_eq_bot, ker_restrict, disjoint_iff_comap_eq_bot]

@[deprecated (since := "2026-07-01")]
alias injective_restrict_iff_disjoint := injective_restrict_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ker/Varianta8f4c44627eb0e969b0167552de4afa2fae907ab3bce2598cca91a4d2d8cfda7.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27da0e61bf7ff14b5f0ac2660efa451939bb4e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
