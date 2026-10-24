# SL_mulAction_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e84954a-0ae2-d894-4e67-c46a57db7581",
  "kind": "lemma",
  "lexical_name": "SL_mulAction_ker",
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
  "slug": "sl-mulaction-ker--0f5dcb925e7ff7f658912fce",
  "source": {
    "blob": "b388a66f9f626cefad06cbe0dfbfd9e31c62480d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 197,
    "path": "GRWTSK/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f5dcb925e7ff7f658912fce94b255f2bbd7d01e0fc210927acb267f071736c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e84954a-0ae2-d894-4e67-c46a57db7581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SL_mulAction_ker :
    (MulAction.toPermHom (Matrix.SpecialLinearGroup ι K) (ℙ K (ι → K))).ker =
      Subgroup.center (Matrix.SpecialLinearGroup ι K) := by
  ext m
  simp only [MonoidHom.mem_ker, toPermHom_apply, Equiv.Perm.one_def, DFunLike.ext_iff, toPerm_apply,
    Equiv.refl_apply, Matrix.SpecialLinearGroup.mem_center_iff]
  refine ⟨fun hm ↦ ?_, fun ⟨r, hr1, hr2⟩ l ↦ ?_⟩
  · set f : (ι → K) →ₗ[K] ι → K := (Matrix.SpecialLinearGroup.toLin' m).toLinearMap with hf
    obtain ⟨a, ha⟩ := f.exists_eq_smul_id_of_forall_notLinearIndependent fun (v : ι → K) ↦ by
      by_cases hv : v = 0
      · simp [hv, linearIndependent_fin2]
      · simpa [LinearIndependent.pair_iff' hv, mk_eq_mk_iff'] using! hm (.mk K v hv)
    have hscalar : m.1 = Matrix.scalar ι a := calc
      m.1 = LinearMap.toMatrix' f := by
        rw [hf, Matrix.SpecialLinearGroup.toLin'_to_linearMap, LinearMap.toMatrix'_toLin']
      _ = (algebraMap K (Module.End K (ι → K)) a).toMatrix' := congrArg LinearMap.toMatrix' ha
      _ = Matrix.scalar ι a := LinearMap.toMatrix'_algebraMap a
    exact ⟨a, by simpa [hscalar] using m.2, hscalar.symm⟩
  · induction l using Projectivization.ind with | _ v hv =>
    simp only [smul_mk, mk_eq_mk_iff']
    use r
    change _ = m.1 • v
    simp [← hr2]

/-- The action of the special linear group on `ℙ F (ι → F)` factors through the
projective special linear group `PSL = SL ⧸ Z(SL)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b388a66f9f626cefad06cbe0dfbfd9e31c62480d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
