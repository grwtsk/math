# normalizeMapAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b408093a5bcc77fbdcbb7a6ae5d63ad6df23aeaf101cc51f700e14d073b2f03f",
  "kind": "def",
  "lexical_name": "normalizeMapAux",
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
  "slug": "normalizemapaux--f42dcc08114889ae5d158d3a",
  "source": {
    "blob": "c8e15a63660dc6c4931271016806aaf4b13eae6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant31cd02aa8acbd3eea7d3ac514fc8aad6140fdd8b735c976befd7e12281e68490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f42dcc08114889ae5d158d3a383a8a7e4b3033f1f3fcd88ee2ca99286f828a03",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant31cd02aa8acbd3eea7d3ac514fc8aad6140fdd8b735c976befd7e12281e68490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b408093a5bcc77fbdcbb7a6ae5d63ad6df23aeaf101cc51f700e14d073b2f03f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizeMapAux : ∀ {X Y : F C}, (X ⟶ᵐ Y) → (normalizeObj' X ⟶ normalizeObj' Y)
  | _, _, Hom.id _ => 𝟙 _
  | _, _, α_hom X Y Z => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, α_inv _ _ _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, l_hom _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, l_inv _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, ρ_hom _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, ρ_inv _ => by dsimp; exact Discrete.natTrans (fun _ => 𝟙 _)
  | _, _, (@Hom.comp _ _ _ _ f g) => normalizeMapAux f ≫ normalizeMapAux g
  | _, _, (@Hom.tensor _ T _ _ W f g) =>
    Discrete.natTrans <| fun ⟨X⟩ => (normalizeMapAux g).app ⟨normalizeObj T X⟩ ≫
      (normalizeObj' W).map ((normalizeMapAux f).app ⟨X⟩)
  | _, _, (@Hom.whiskerLeft _ T _ W f) =>
    Discrete.natTrans <| fun ⟨X⟩ => (normalizeMapAux f).app ⟨normalizeObj T X⟩
  | _, _, (@Hom.whiskerRight _ T _ f W) =>
    Discrete.natTrans <| fun X => (normalizeObj' W).map <| (normalizeMapAux f).app X

end

section

variable (C)

/-- Our normalization procedure works by first defining a functor `F C ⥤ (N C ⥤ N C)` (which turns
out to be very easy), and then obtain a functor `F C ⥤ N C` by plugging in the normal object
`𝟙_ C`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant31cd02aa8acbd3eea7d3ac514fc8aad6140fdd8b735c976befd7e12281e68490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant31cd02aa8acbd3eea7d3ac514fc8aad6140fdd8b735c976befd7e12281e68490.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8e15a63660dc6c4931271016806aaf4b13eae6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
