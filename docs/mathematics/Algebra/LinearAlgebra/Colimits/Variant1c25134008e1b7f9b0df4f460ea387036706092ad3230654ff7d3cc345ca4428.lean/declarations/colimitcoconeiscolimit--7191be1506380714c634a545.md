# colimitCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4626b480ca3c90c77696a7a954692d0ab9fb766a965348de1fa8da4193b940d",
  "kind": "def",
  "lexical_name": "colimitCoconeIsColimit",
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
  "slug": "colimitcoconeiscolimit--7191be1506380714c634a545",
  "source": {
    "blob": "61580afeed13de30715b73daa0da7f4eb929ade3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 293,
    "path": "GRWTSK/Algebra/LinearAlgebra/Colimits/Variant1c25134008e1b7f9b0df4f460ea387036706092ad3230654ff7d3cc345ca4428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7191be1506380714c634a545c34d473c77a6d5c4e3177fd72625af551c45e004",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Colimits/Variant1c25134008e1b7f9b0df4f460ea387036706092ad3230654ff7d3cc345ca4428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4626b480ca3c90c77696a7a954692d0ab9fb766a965348de1fa8da4193b940d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCoconeIsColimit : IsColimit (colimitCocone F) where
  desc s := descMorphism F s
  uniq s m w := by
    ext x
    -- porting note: was `induction x` but now need `Quot.rec` with explicit `motive`
    refine Quot.rec (motive := fun x ↦ m x = _) (fun x ↦ ?_) (fun x_a x_b x_p ↦ ?_) x
    dsimp
    induction' x with x_j x_x
    · have w' :=
        congr_fun (congr_arg (fun f : F.obj x_j ⟶ s.pt => (f : F.obj x_j → s.pt)) (w x_j)) x_x
      simp only at w'
      erw [w']
      rfl
    · rw [quot_zero, map_zero] -- porting note: was `simp` but `map_zero` won't fire
      rfl
    · simpa
    · rw [quot_add, map_add, map_add]  -- porting note: this was closed by `simp [*]`
      congr 1
    · rw [quot_smul, map_smul, map_smul]  -- porting note: this was closed by `simp [*]`
      congr 1
    · rfl -- porting note: this wasn't here
set_option linter.uppercaseLean3 false in
#align Module.colimits.colimit_cocone_is_colimit ModuleCat.Colimits.colimitCoconeIsColimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Colimits/Variant1c25134008e1b7f9b0df4f460ea387036706092ad3230654ff7d3cc345ca4428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Colimits/Variant1c25134008e1b7f9b0df4f460ea387036706092ad3230654ff7d3cc345ca4428.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61580afeed13de30715b73daa0da7f4eb929ade3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
