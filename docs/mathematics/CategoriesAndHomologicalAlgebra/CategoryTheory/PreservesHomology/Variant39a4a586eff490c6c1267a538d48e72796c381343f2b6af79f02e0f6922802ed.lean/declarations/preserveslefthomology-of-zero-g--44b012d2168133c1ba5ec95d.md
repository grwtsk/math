# preservesLeftHomology_of_zero_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0ba6a8f-e0c8-260c-a906-4ed6e3539b21",
  "kind": "lemma",
  "lexical_name": "preservesLeftHomology_of_zero_g",
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
  "slug": "preserveslefthomology-of-zero-g--44b012d2168133c1ba5ec95d",
  "source": {
    "blob": "c53ed2687c6b810a2f1c343491d7c1fa066529eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 862,
    "line": 849,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant39a4a586eff490c6c1267a538d48e72796c381343f2b6af79f02e0f6922802ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44b012d2168133c1ba5ec95d4bfa8eaa74d29cb98285d947ee2b88ee1c5369f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant39a4a586eff490c6c1267a538d48e72796c381343f2b6af79f02e0f6922802ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0ba6a8f-e0c8-260c-a906-4ed6e3539b21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesLeftHomology_of_zero_g (hg : S.g = 0)
    [PreservesColimit (parallelPair S.f 0) F] :
    F.PreservesLeftHomologyOf S := ⟨fun h =>
  { g := by
      rw [hg]
      infer_instance
    f' := by
      have := h.isIso_i hg
      let e : parallelPair h.f' 0 ≅ parallelPair S.f 0 :=
        parallelPair.ext (Iso.refl _) (asIso h.i) (by simp) (by simp)
      exact Limits.preservesColimit_of_iso_diagram F e.symm}⟩

/-- If a short complex `S` is such that `S.f = 0` and that the kernel of `S.g` is preserved
by a functor `F`, then `F` preserves the right homology of `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant39a4a586eff490c6c1267a538d48e72796c381343f2b6af79f02e0f6922802ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variant39a4a586eff490c6c1267a538d48e72796c381343f2b6af79f02e0f6922802ed.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c53ed2687c6b810a2f1c343491d7c1fa066529eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
