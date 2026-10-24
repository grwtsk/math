# exists_eigenvector_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30a5f9ba-ffb4-14e1-b5db-4351c9fc4c42",
  "kind": "lemma",
  "lexical_name": "exists_eigenvector_of_ne_zero",
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
  "slug": "exists-eigenvector-of-ne-zero--2303ed88176579bf20351f3c",
  "source": {
    "blob": "6bd972dd0a87cc4725a1d09eb8d5757c4954d38d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2303ed88176579bf20351f3c87956ef005a937f4d7dc1fec3c8b88ce0856b6c8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30a5f9ba-ffb4-14e1-b5db-4351c9fc4c42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_eigenvector_of_ne_zero (hA : IsHermitian A) (h_ne : A ≠ 0) :
    ∃ (v : n → 𝕜) (t : ℝ), t ≠ 0 ∧ v ≠ 0 ∧ A *ᵥ v = t • v := by
  classical
  have : hA.eigenvalues ≠ 0 := by
    contrapose! h_ne
    have := hA.spectral_theorem
    rwa [h_ne, Pi.comp_zero, RCLike.ofReal_zero, (by rfl : Function.const n (0 : 𝕜) = fun _ ↦ 0),
      diagonal_zero, mul_zero, zero_mul] at this
  obtain ⟨i, hi⟩ := Function.ne_iff.mp this
  exact ⟨_, _, hi, hA.eigenvectorBasis.orthonormal.ne_zero i, hA.mulVec_eigenvectorBasis i⟩

end IsHermitian

end Matrix

/-The following were removed as a result of the refactor, since they either were
unused in the library, followed as immediate consequences of, or were replaced by
above results (e.g. results about inverses don't need replacement because their unitary
analogues have replaced them). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantdc4c1ea0c5b67be0b06d2c4206edec6f9dee92f56366f842aba5dedebca238be.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bd972dd0a87cc4725a1d09eb8d5757c4954d38d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
