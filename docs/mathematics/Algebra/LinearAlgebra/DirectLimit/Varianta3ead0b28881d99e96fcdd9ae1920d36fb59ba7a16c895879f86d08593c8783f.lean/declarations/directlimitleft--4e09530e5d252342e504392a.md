# directLimitLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93d3bd5f5d26dc47c3784ceb2412db38046e30927f358d420852c33f3087530d",
  "kind": "def",
  "lexical_name": "directLimitLeft",
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
  "slug": "directlimitleft--4e09530e5d252342e504392a",
  "source": {
    "blob": "3aea7f359bfc3646eee25bb62864cb4de14c3916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e09530e5d252342e504392a451ee0379189571600d61dc14a2915b6e0142c2c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93d3bd5f5d26dc47c3784ceb2412db38046e30927f358d420852c33f3087530d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def directLimitLeft :
    DirectLimit G f ⊗[R] M ≃ₗ[R] DirectLimit (G · ⊗[R] M) (f ▷ M) := by
  refine LinearEquiv.ofLinear (toDirectLimit f M) (fromDirectLimit f M) ?_ (ext ?_)
  · ext ⟨x⟩
    exact x.induction_on (by simp) (fun i x ↦ x.induction_on (by simp)
      (fun _ _ ↦ by rw [quotMk_of]; simp) <| by simp+contextual) (by simp+contextual)
  · ext ⟨x⟩ m
    exact x.induction_on (by simp) (fun _ _ ↦ by rw [quotMk_of]; simp) (by simp+contextual)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aea7f359bfc3646eee25bb62864cb4de14c3916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
