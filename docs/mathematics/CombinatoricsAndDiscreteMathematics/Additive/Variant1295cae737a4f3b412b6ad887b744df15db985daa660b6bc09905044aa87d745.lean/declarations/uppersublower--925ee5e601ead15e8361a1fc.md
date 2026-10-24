# upperSubLower.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9bb4087004b6af6125f185c9cca7f5e56fbc0672a40947f75a1b5f68b89ef91",
  "kind": "def",
  "lexical_name": "upperSubLower.",
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
  "slug": "uppersublower--925ee5e601ead15e8361a1fc",
  "source": {
    "blob": "61fb2e528f253707440b02c0cd6efbc9b945a9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 241,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Additive/Variant1295cae737a4f3b412b6ad887b744df15db985daa660b6bc09905044aa87d745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:925ee5e601ead15e8361a1fce2875132ceab0ef5a8dceb2fbd2725e9d57dd1c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Additive/Variant1295cae737a4f3b412b6ad887b744df15db985daa660b6bc09905044aa87d745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9bb4087004b6af6125f185c9cca7f5e56fbc0672a40947f75a1b5f68b89ef91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def upperSubLower.{u} {G : Type u} [AddCommGroup G] (I₀ : Box (Fin (n + 1))) (i : Fin (n + 1))
    (f : ℝ → Box (Fin n) → G) (fb : Icc (I₀.lower i) (I₀.upper i) → Fin n →ᵇᵃ[I₀.face i] G)
    (hf : ∀ (x) (hx : x ∈ Icc (I₀.lower i) (I₀.upper i)) (J), f x J = fb ⟨x, hx⟩ J) :
    Fin (n + 1) →ᵇᵃ[I₀] G :=
  ofMapSplitAdd (fun J : Box (Fin (n + 1)) => f (J.upper i) (J.face i) - f (J.lower i) (J.face i))
    I₀
    (by
      intro J hJ j x
      rw [WithTop.coe_le_coe] at hJ
      refine i.succAboveCases (fun hx => ?_) (fun j hx => ?_) j
      · simp only [Box.splitLower_def hx, Box.splitUpper_def hx, update_self, ← WithBot.some_eq_coe,
          Option.elim', Box.face, Function.comp_def, update_of_ne (Fin.succAbove_ne _ _)]
        abel
      · have : (J.face i : WithTop (Box (Fin n))) ≤ I₀.face i :=
          WithTop.coe_le_coe.2 (face_mono hJ i)
        rw [le_iff_Icc, @Box.Icc_eq_pi _ I₀] at hJ
        rw [hf _ (hJ J.upper_mem_Icc _ trivial), hf _ (hJ J.lower_mem_Icc _ trivial),
          ← (fb _).map_split_add this j x, ← (fb _).map_split_add this j x]
        have hx' : x ∈ Ioo ((J.face i).lower j) ((J.face i).upper j) := hx
        simp only [Box.splitLower_def hx, Box.splitUpper_def hx, Box.splitLower_def hx',
          Box.splitUpper_def hx', ← WithBot.some_eq_coe, Option.elim', Box.face_mk,
          update_of_ne (Fin.succAbove_ne _ _).symm, sub_add_sub_comm,
          update_comp_eq_of_injective _ (Fin.strictMono_succAbove i).injective j x, ← hf]
        simp only [Box.face])

end BoxAdditiveMap

end BoxIntegral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Additive/Variant1295cae737a4f3b412b6ad887b744df15db985daa660b6bc09905044aa87d745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Additive/Variant1295cae737a4f3b412b6ad887b744df15db985daa660b6bc09905044aa87d745.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61fb2e528f253707440b02c0cd6efbc9b945a9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
