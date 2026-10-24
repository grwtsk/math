# ofSubtype_subtypePerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b89a05bb-9ee6-6b91-ece2-b885943fdf6f",
  "kind": "theorem",
  "lexical_name": "ofSubtype_subtypePerm",
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
  "slug": "ofsubtype-subtypeperm--9c15882ca5780f66eaa1fd1f",
  "source": {
    "blob": "9089d75f89716e574c300bf8d9d6ae80c3d7901e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 446,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c15882ca5780f66eaa1fd1f82b7309ef97d32205a7d3bab8c99cbf98fd9d26a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b89a05bb-9ee6-6b91-ece2-b885943fdf6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofSubtype_subtypePerm {f : Perm α} (h₁ : ∀ x, p x ↔ p (f x)) (h₂ : ∀ x, f x ≠ x → p x) :
    ofSubtype (subtypePerm f h₁) = f :=
  Equiv.ext fun x => by
    by_cases hx : p x
    · exact (subtypePerm f h₁).extendDomain_apply_subtype _ hx
    · rw [ofSubtype, MonoidHom.coe_mk]
      -- Porting note: added `dsimp`
      dsimp only [OneHom.coe_mk]
      rw [Equiv.Perm.extendDomain_apply_not_subtype _ _ hx]
      exact not_not.mp fun h => hx (h₂ x (Ne.symm h))
#align equiv.perm.of_subtype_subtype_perm Equiv.Perm.ofSubtype_subtypePerm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantb1dc57a036a92be890713033d146b1a357af652b5762cd347da7bd9abcd593b9.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9089d75f89716e574c300bf8d9d6ae80c3d7901e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
