# liftPrincipalSeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b20580c6ef75d473931e196a6a64f65ff9a4ed54938a0c60d62ae7ec3a022689",
  "kind": "def",
  "lexical_name": "liftPrincipalSeg",
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
  "slug": "liftprincipalseg--e8f59622d35d77d163369e23",
  "source": {
    "blob": "f345e2cd8affcf743aac9ae9e89edaa06a23797b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 981,
    "line": 952,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant3faaa55c97788db17b9f1ac3d6d02b45c97ee2ead53825892f2886690348e14c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8f59622d35d77d163369e237ab306984e9c3d0447f219ac8829ab5b98be0416",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant3faaa55c97788db17b9f1ac3d6d02b45c97ee2ead53825892f2886690348e14c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b20580c6ef75d473931e196a6a64f65ff9a4ed54938a0c60d62ae7ec3a022689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 952–981.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftPrincipalSeg : Ordinal.{u} <i Ordinal.{max (u + 1) v} :=
  ⟨↑liftInitialSeg.{max (u + 1) v, u}, univ.{u, v}, by
    refine fun b => inductionOn b ?_; intro β s _
    rw [univ, ← lift_umax]; constructor <;> intro h
    · obtain ⟨a, e⟩ := h
      rw [← e]
      refine inductionOn a ?_
      intro α r _
      exact lift_type_lt.{u, u + 1, max (u + 1) v}.2 ⟨typein r⟩
    · rw [← lift_id (type s)] at h ⊢
      obtain ⟨f⟩ := lift_type_lt.{_,_,v}.1 h
      obtain ⟨f, a, hf⟩ := f
      exists a
      revert hf
      -- Porting note: apply inductionOn does not work, refine does
      refine inductionOn a ?_
      intro α r _ hf
      refine lift_type_eq.{u, max (u + 1) v, max (u + 1) v}.2
        ⟨(RelIso.ofSurjective (RelEmbedding.ofMonotone ?_ ?_) ?_).symm⟩
      · exact fun b => enum r ⟨f b, (hf _).1 ⟨_, rfl⟩⟩
      · refine fun a b h => (typein_lt_typein r).1 ?_
        rw [typein_enum, typein_enum]
        exact f.map_rel_iff.2 h
      · intro a'
        obtain ⟨b, e⟩ := (hf _).2 (typein_lt_type _ a')
        exists b
        simp only [RelEmbedding.ofMonotone_coe]
        simp [e]⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant3faaa55c97788db17b9f1ac3d6d02b45c97ee2ead53825892f2886690348e14c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant3faaa55c97788db17b9f1ac3d6d02b45c97ee2ead53825892f2886690348e14c.lean#L952).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f345e2cd8affcf743aac9ae9e89edaa06a23797b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
