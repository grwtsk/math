# liftCompleteLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c87a24b27ead9dfe6835cd3540bf1e063b7ab2fb33d46676819d4f4bb41cb9c8",
  "kind": "def",
  "lexical_name": "liftCompleteLattice",
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
  "slug": "liftcompletelattice--46d6ae29fd3ec186b08c139f",
  "source": {
    "blob": "b9e516fa8237a95509dd0e12c015fd48727b205f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 690,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant92ca7a0db308141d6aff3021619e4a7f92358eb6390bcfdb5ff74b2be4cb7420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46d6ae29fd3ec186b08c139fe077a66deea88868ffa8fd3834fdb051cd699c11",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant92ca7a0db308141d6aff3021619e4a7f92358eb6390bcfdb5ff74b2be4cb7420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c87a24b27ead9dfe6835cd3540bf1e063b7ab2fb33d46676819d4f4bb41cb9c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 690–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftCompleteLattice [CompleteLattice α] (gi : GaloisInsertion l u) : CompleteLattice β :=
  { gi.liftBoundedOrder, gi.liftLattice with
    sSup := fun s => l (sSup (u '' s))
    sSup_le := fun s => (gi.isLUB_of_u_image (isLUB_sSup _)).2
    le_sSup := fun s => (gi.isLUB_of_u_image (isLUB_sSup _)).1
    sInf := fun s =>
      gi.choice (sInf (u '' s)) <|
        (isGLB_sInf _).2 <|
          gi.gc.monotone_u.mem_lowerBounds_image (gi.isGLB_of_u_image <| isGLB_sInf _).1
    sInf_le := fun s => by dsimp; rw [gi.choice_eq]; exact (gi.isGLB_of_u_image (isGLB_sInf _)).1
    le_sInf := fun s => by dsimp; rw [gi.choice_eq]; exact (gi.isGLB_of_u_image (isGLB_sInf _)).2 }
#align galois_insertion.lift_complete_lattice GaloisInsertion.liftCompleteLattice

end lift

end GaloisInsertion

-- Porting note: this used to have a `@[nolint has_nonempty_instance]`
/-- A Galois coinsertion is a Galois connection where `u ∘ l = id`. It also contains a constructive
choice function, to give better definitional equalities when lifting order structures. Dual to
`GaloisInsertion` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant92ca7a0db308141d6aff3021619e4a7f92358eb6390bcfdb5ff74b2be4cb7420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant92ca7a0db308141d6aff3021619e4a7f92358eb6390bcfdb5ff74b2be4cb7420.lean#L690).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e516fa8237a95509dd0e12c015fd48727b205f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
