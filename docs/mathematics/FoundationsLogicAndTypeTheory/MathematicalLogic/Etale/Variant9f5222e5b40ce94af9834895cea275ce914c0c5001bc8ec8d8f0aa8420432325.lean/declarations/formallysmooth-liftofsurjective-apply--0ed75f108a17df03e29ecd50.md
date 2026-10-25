# FormallySmooth.liftOfSurjective_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89c7cad3-556f-f59b-62bb-fb66c8ace8b3",
  "kind": "theorem",
  "lexical_name": "FormallySmooth.liftOfSurjective_apply",
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
  "slug": "formallysmooth-liftofsurjective-apply--0ed75f108a17df03e29ecd50",
  "source": {
    "blob": "65b2073433fa1958bb61cf05db35fc6140a1be9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ed75f108a17df03e29ecd504ede88a606c9776e71c685778b324fb5c557d04d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89c7cad3-556f-f59b-62bb-fb66c8ace8b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FormallySmooth.liftOfSurjective_apply [FormallySmooth R A] (f : A →ₐ[R] C) (g : B →ₐ[R] C)
    (hg : Function.Surjective g) (hg' : IsNilpotent <| RingHom.ker (g : B →+* C)) (x : A) :
    g (FormallySmooth.liftOfSurjective f g hg hg' x) = f x := by
  apply (Ideal.quotientKerAlgEquivOfSurjective hg).symm.injective
  change _ = ((Ideal.quotientKerAlgEquivOfSurjective hg).symm.toAlgHom.comp f) x
  rw [← FormallySmooth.mk_lift _ hg'
    ((Ideal.quotientKerAlgEquivOfSurjective hg).symm.toAlgHom.comp f)]
  apply (Ideal.quotientKerAlgEquivOfSurjective hg).injective
  rw [AlgEquiv.apply_symm_apply, Ideal.quotientKerAlgEquivOfSurjective,
    Ideal.quotientKerAlgEquivOfRightInverse.apply]
  exact (Ideal.kerLiftAlg_mk _ _).symm
#align algebra.formally_smooth.lift_of_surjective_apply Algebra.FormallySmooth.liftOfSurjective_apply

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65b2073433fa1958bb61cf05db35fc6140a1be9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
