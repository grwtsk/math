# stdSimplexEquivIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a6514b429c456ac207699b58cadd9863df16768bb14e632bbead34d0f1c012b",
  "kind": "def",
  "lexical_name": "stdSimplexEquivIcc",
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
  "slug": "stdsimplexequivicc--29c43dddf77189f8b733288a",
  "source": {
    "blob": "dad72a7e634f0ec546159aeb36424c7c4029816c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 678,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29c43dddf77189f8b733288adcee326fd1f1add0ad44a6563575429f56fd24a4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a6514b429c456ac207699b58cadd9863df16768bb14e632bbead34d0f1c012b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 678–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stdSimplexEquivIcc : stdSimplex 𝕜 (Fin 2) ≃ Icc (0 : 𝕜) 1 where
  toFun f := ⟨f.1 0, f.2.1 _, f.2.2 ▸
    Finset.single_le_sum (fun i _ ↦ f.2.1 i) (Finset.mem_univ _)⟩
  invFun x := ⟨![x, 1 - x], Fin.forall_fin_two.2 ⟨x.2.1, sub_nonneg.2 x.2.2⟩,
    calc
      ∑ i : Fin 2, ![(x : 𝕜), 1 - x] i = x + (1 - x) := Fin.sum_univ_two _
      _ = 1 := add_sub_cancel _ _⟩
  left_inv f := Subtype.eq <| funext <| Fin.forall_fin_two.2 <| .intro rfl <|
      calc
        (1 : 𝕜) - f.1 0 = f.1 0 + f.1 1 - f.1 0 := by rw [← Fin.sum_univ_two f.1, f.2.2]
        _ = f.1 1 := add_sub_cancel_left _ _
  right_inv _ := Subtype.eq rfl

end OrderedRing

end Simplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantd95f17629e0445409913efba2f121daab20e6967c688bcf04d99c592a6add32c.lean#L678).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dad72a7e634f0ec546159aeb36424c7c4029816c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
