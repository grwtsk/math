# expUnitary_argSelfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc395a01-7d7b-1293-e4a4-6cc1a8624f88",
  "kind": "lemma",
  "lexical_name": "expUnitary_argSelfAdjoint",
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
  "slug": "expunitary-argselfadjoint--643d7567f5ea4859d288ac1a",
  "source": {
    "blob": "092b916ab1e0d55969c502ec34031fb0f1a901a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:643d7567f5ea4859d288ac1afb99d23dc723034dbef0fe41816011a4a1d7fea2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc395a01-7d7b-1293-e4a4-6cc1a8624f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma expUnitary_argSelfAdjoint {u : unitary A} (hu : ‖(u - 1 : A)‖ < 2) :
    expUnitary (argSelfAdjoint u) = u := by
  ext
  have : ContinuousOn arg (spectrum ℂ (u : A)) :=
    continuousOn_arg.mono <| (spectrum_subset_slitPlane_iff_norm_lt_two u.2).mpr hu
  rw [expUnitary_coe, argSelfAdjoint_coe, ← CFC.exp_eq_normedSpace_exp (𝕜 := ℂ),
    ← cfc_comp_smul .., ← cfc_comp' ..]
  conv_rhs => rw [← cfc_id' ℂ (u : A)]
  congr! 1 with y hy
  have hy₁ : ‖y‖ = 1 := spectrum.norm_eq_one_of_unitary u.2 hy
  have : I * y.arg = log y :=
    Complex.ext (by simp [log_re, spectrum.norm_eq_one_of_unitary u.2 hy]) (by simp [log_im])
  simpa [← exp_eq_exp_ℂ, this] using exp_log (by aesop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variantf997835b509882650729f413f8ffb2d786a683870e2fa59b58886fe0397718cd.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092b916ab1e0d55969c502ec34031fb0f1a901a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
