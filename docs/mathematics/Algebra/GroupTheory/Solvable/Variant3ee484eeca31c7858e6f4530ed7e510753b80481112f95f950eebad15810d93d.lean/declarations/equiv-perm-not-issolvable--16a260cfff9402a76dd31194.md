# Equiv.Perm.not_isSolvable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:047f1da9-ff90-f563-9119-bab006ae7d5d",
  "kind": "theorem",
  "lexical_name": "Equiv.Perm.not_isSolvable",
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
  "slug": "equiv-perm-not-issolvable--16a260cfff9402a76dd31194",
  "source": {
    "blob": "74a7e7763b8847af8475a071c1b841860d49157d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 306,
    "path": "GRWTSK/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16a260cfff9402a76dd31194f80432a63e0a66bc2f511e713a5d33647ba5dc1e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:047f1da9-ff90-f563-9119-bab006ae7d5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.Perm.not_isSolvable (X : Type*) (hX : 5 ≤ Cardinal.mk X) :
    ¬Group.IsSolvable (Equiv.Perm X) := by
  intro h
  have key : Nonempty (Fin 5 ↪ X) := by
    rwa [← Cardinal.lift_mk_le, Cardinal.mk_fin, Cardinal.lift_natCast, Cardinal.lift_id]
  exact
    Equiv.Perm.not_isSolvable_fin_5 (Group.isSolvable_of_isSolvable_injective
      (Equiv.Perm.viaEmbeddingHom_injective (Nonempty.some key)))

@[deprecated (since := "2026-07-16")]
alias Equiv.Perm.not_solvable := Equiv.Perm.not_isSolvable

end PermNotSolvable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a7e7763b8847af8475a071c1b841860d49157d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
