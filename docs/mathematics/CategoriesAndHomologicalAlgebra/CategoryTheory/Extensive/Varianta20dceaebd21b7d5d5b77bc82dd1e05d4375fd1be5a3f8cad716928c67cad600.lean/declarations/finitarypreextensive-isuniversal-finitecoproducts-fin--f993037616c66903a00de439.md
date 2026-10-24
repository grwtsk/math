# FinitaryPreExtensive.isUniversal_finiteCoproducts_Fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ab679f8-1ab7-3c89-fbae-057443d44c12",
  "kind": "theorem",
  "lexical_name": "FinitaryPreExtensive.isUniversal_finiteCoproducts_Fin",
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
  "slug": "finitarypreextensive-isuniversal-finitecoproducts-fin--f993037616c66903a00de439",
  "source": {
    "blob": "400fb56da10be156e6cd5ef700f13a535fe5b96e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 439,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f993037616c66903a00de439765680ef3af6b55aa070ea7faf5ac80e5c12a8ca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ab679f8-1ab7-3c89-fbae-057443d44c12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FinitaryPreExtensive.isUniversal_finiteCoproducts_Fin [FinitaryPreExtensive C] {n : ℕ}
    {F : Discrete (Fin n) ⥤ C} {c : Cocone F} (hc : IsColimit c) : IsUniversalColimit c := by
  let f : Fin n → C := F.obj ∘ Discrete.mk
  have : F = Discrete.functor f :=
    Functor.hext (fun _ ↦ rfl) (by rintro ⟨i⟩ ⟨j⟩ ⟨⟨rfl : i = j⟩⟩; simp [f])
  clear_value f
  subst this
  induction n with
  | zero => exact (isVanKampenColimit_of_isEmpty _ hc).isUniversal
  | succ n IH =>
    refine IsUniversalColimit.of_iso (@isUniversalColimit_extendCofan _ _ _ _ _ _
      (IH _ (coproductIsCoproduct _)) (FinitaryPreExtensive.universal' _ (coprodIsCoprod _ _)) ?_)
      ((extendCofanIsColimit f (coproductIsCoproduct _) (coprodIsCoprod _ _)).uniqueUpToIso hc)
    · dsimp
      infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Varianta20dceaebd21b7d5d5b77bc82dd1e05d4375fd1be5a3f8cad716928c67cad600.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `400fb56da10be156e6cd5ef700f13a535fe5b96e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
