# MulticospanIndex.sectionsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91d03eef60aea0e2556580221f2626f5bbdcd8365ccdff0585f70ce2fe7167c9",
  "kind": "def",
  "lexical_name": "MulticospanIndex.sectionsEquiv",
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
  "slug": "multicospanindex-sectionsequiv--db407b472f7b13fb7ffab14a",
  "source": {
    "blob": "cfdc7a502038077b03850562802bd525532b30b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantf4ab66c024b32c05d9716ea742d994647e4d65de143ec071a0690a1d34d75a56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db407b472f7b13fb7ffab14a93a01fe72189bca6000491c9cfa52e3dcfbb75ca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantf4ab66c024b32c05d9716ea742d994647e4d65de143ec071a0690a1d34d75a56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91d03eef60aea0e2556580221f2626f5bbdcd8365ccdff0585f70ce2fe7167c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulticospanIndex.sectionsEquiv :
    I.sections ≃ I.multicospan.sections where
  toFun s :=
    { val := fun i ↦ match i with
        | .left i => s.val i
        | .right j => I.fst j (s.val _)
      property := by
        rintro _ _ (_ | _ | r)
        · rfl
        · rfl
        · exact (s.property r).symm }
  invFun s :=
    { val := fun i ↦ s.val (.left i)
      property := fun r ↦ (s.property (.fst r)).trans (s.property (.snd r)).symm }
  right_inv s := by
    ext (_ | r)
    · rfl
    · exact s.property (.fst r)

namespace Multifork

variable {I}
variable (c : Multifork I)

/-- Given a multiequalizer diagram `I : MulticospanIndex (Type u)` in the category of
types and `c` a multifork for `I`, this is the canonical map `c.pt → I.sections`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantf4ab66c024b32c05d9716ea742d994647e4d65de143ec071a0690a1d34d75a56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantf4ab66c024b32c05d9716ea742d994647e4d65de143ec071a0690a1d34d75a56.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfdc7a502038077b03850562802bd525532b30b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
