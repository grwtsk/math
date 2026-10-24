# FG.of_restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec814202-c73d-b823-86a3-470dbcb0a504",
  "kind": "lemma",
  "lexical_name": "FG.of_restrictScalars",
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
  "slug": "fg-of-restrictscalars--527bdee48a0b781a10dd3e22",
  "source": {
    "blob": "928770a40fe94a33af08cd62083390bd38a1b73c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant66a804159f0604a1d303c86d2ad7944357459b3e7a43f027d76863ac7ad2b1c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:527bdee48a0b781a10dd3e22e75b80699e5c85f18455066b5cbae683e82f3422",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant66a804159f0604a1d303c86d2ad7944357459b3e7a43f027d76863ac7ad2b1c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec814202-c73d-b823-86a3-470dbcb0a504`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FG.of_restrictScalars (R) {A M} [Semiring R] [Semiring A] [AddCommMonoid M]
    [SMul R A] [Module R M] [Module A M] [IsScalarTower R A M] (S : Submodule A M)
    (hS : (S.restrictScalars R).FG) : S.FG := by
  obtain ⟨s, e⟩ := hS
  refine ⟨s, Submodule.restrictScalars_injective R _ _ (le_antisymm ?_ ?_)⟩
  · show Submodule.span A s ≤ S
    have := Submodule.span_le.mp e.le
    rwa [Submodule.span_le]
  · rw [← e]
    exact Submodule.span_le_restrictScalars _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant66a804159f0604a1d303c86d2ad7944357459b3e7a43f027d76863ac7ad2b1c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant66a804159f0604a1d303c86d2ad7944357459b3e7a43f027d76863ac7ad2b1c1.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `928770a40fe94a33af08cd62083390bd38a1b73c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
