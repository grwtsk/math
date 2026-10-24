# EffectiveEpiFamilyStruct.reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7e9fba63937d37cdac7cf89671171450304497e5f70071caedf4b9b994b36f1",
  "kind": "def",
  "lexical_name": "EffectiveEpiFamilyStruct.reindex",
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
  "slug": "effectiveepifamilystruct-reindex--4324cc9a65897de6ee815a25",
  "source": {
    "blob": "926d6cb6a6e7a1ce49ce843e93f1316420ce5fe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa8184f9288618439d87ce211a2437fd45dc101bb51796f7031308a75aad184b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4324cc9a65897de6ee815a253d9049935ee9ab291f601cd9b217e604b6f43a47",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa8184f9288618439d87ce211a2437fd45dc101bb51796f7031308a75aad184b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7e9fba63937d37cdac7cf89671171450304497e5f70071caedf4b9b994b36f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EffectiveEpiFamilyStruct.reindex
    {B : C} {α α' : Type*}
    (X : α → C)
    (π : (a : α) → (X a ⟶ B))
    (e : α' ≃ α)
    (P : EffectiveEpiFamilyStruct (fun a => X (e a)) (fun a => π (e a))) :
    EffectiveEpiFamilyStruct X π where
  desc := fun f h => P.desc (fun _ => f _) (fun _ _ => h _ _)
  fac _ _ a := by
    obtain ⟨a,rfl⟩ := e.surjective a
    apply P.fac
  uniq _ _ _ hm := P.uniq _ _ _ fun _ => hm _

/--
Reindex the indexing type of an effective epi family.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa8184f9288618439d87ce211a2437fd45dc101bb51796f7031308a75aad184b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa8184f9288618439d87ce211a2437fd45dc101bb51796f7031308a75aad184b.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `926d6cb6a6e7a1ce49ce843e93f1316420ce5fe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
