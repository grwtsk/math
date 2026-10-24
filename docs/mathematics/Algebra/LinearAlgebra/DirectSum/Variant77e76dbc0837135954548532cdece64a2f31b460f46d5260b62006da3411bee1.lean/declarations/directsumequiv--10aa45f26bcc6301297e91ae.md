# directSumEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20e739a1c8323a8dd6f2c74ac9f9845d6b0655c76692481695e3c1e8c4d4b11c",
  "kind": "def",
  "lexical_name": "directSumEquiv",
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
  "slug": "directsumequiv--10aa45f26bcc6301297e91ae",
  "source": {
    "blob": "c8412d76e9bfa735a2a3caa28577c32e4f12e8c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/DirectSum/Variant77e76dbc0837135954548532cdece64a2f31b460f46d5260b62006da3411bee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10aa45f26bcc6301297e91ae11a9b1ea8df5088f4013b79385d2813ee79c180e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DirectSum/Variant77e76dbc0837135954548532cdece64a2f31b460f46d5260b62006da3411bee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20e739a1c8323a8dd6f2c74ac9f9845d6b0655c76692481695e3c1e8c4d4b11c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def directSumEquiv :
    (Relations.directSum relations).Solution N ≃
      ∀ i, (relations i).Solution N where
  toFun s i :=
    { var := fun g ↦ s.var ⟨i, g⟩
      linearCombination_var_relation := fun r ↦ by
        rw [← s.linearCombination_var_relation ⟨i, r⟩]
        symm
        apply Finsupp.linearCombination_embDomain }
  invFun t :=
    { var := fun ⟨i, g⟩ ↦ (t i).var g
      linearCombination_var_relation := fun ⟨i, r⟩ ↦ by
        rw [← (t i).linearCombination_var_relation r]
        apply Finsupp.linearCombination_embDomain }
  left_inv _ := rfl
  right_inv _ := rfl

/-- Given `solution : ∀ (i : ι), (relations i).Solution (M i)`, this is the
canonical solution of `Relations.directSum relations` in `⨁ i, M i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DirectSum/Variant77e76dbc0837135954548532cdece64a2f31b460f46d5260b62006da3411bee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DirectSum/Variant77e76dbc0837135954548532cdece64a2f31b460f46d5260b62006da3411bee1.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8412d76e9bfa735a2a3caa28577c32e4f12e8c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
