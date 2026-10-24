# nonempty_of_isAlgClosed_of_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:448c6d8f-2d19-9dc1-864b-0a55ede3b373",
  "kind": "theorem",
  "lexical_name": "nonempty_of_isAlgClosed_of_finiteDimensional",
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
  "slug": "nonempty-of-isalgclosed-of-finitedimensional--82f5043fb1757d66d4b96199",
  "source": {
    "blob": "4439d8f32b67b87dd11590b5816e54cae85c1841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 165,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82f5043fb1757d66d4b96199ffc7d32fed0ff46416a3b72624248ac465cc6ad5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:448c6d8f-2d19-9dc1-864b-0a55ede3b373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_of_isAlgClosed_of_finiteDimensional [IsAlgClosed 𝕜] [Nontrivial A]
    [I : FiniteDimensional 𝕜 A] (a : A) : (σ a).Nonempty := by
  obtain ⟨p, ⟨h_mon, h_eval_p⟩⟩ := isIntegral_of_noetherian (IsNoetherian.iff_fg.2 I) a
  have nu : ¬IsUnit (aeval a p) := by rw [← aeval_def] at h_eval_p; rw [h_eval_p]; simp
  rw [eq_prod_roots_of_monic_of_splits_id h_mon (IsAlgClosed.splits p)] at nu
  obtain ⟨k, hk, _⟩ := exists_mem_of_not_isUnit_aeval_prod nu
  exact ⟨k, hk⟩
#align spectrum.nonempty_of_is_alg_closed_of_finite_dimensional spectrum.nonempty_of_isAlgClosed_of_finiteDimensional

end ScalarField

end spectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variant22bcc03e43a749f6751e5acece3daa5b317073923cac32a62e044835b65789b7.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4439d8f32b67b87dd11590b5816e54cae85c1841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
