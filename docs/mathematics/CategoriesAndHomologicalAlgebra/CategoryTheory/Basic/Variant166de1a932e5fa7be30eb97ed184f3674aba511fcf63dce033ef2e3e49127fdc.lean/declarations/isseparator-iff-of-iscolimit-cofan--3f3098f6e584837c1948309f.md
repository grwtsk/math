# isSeparator_iff_of_isColimit_cofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8b9b1a9-4266-50f2-18bc-20c0da785a04",
  "kind": "lemma",
  "lexical_name": "isSeparator_iff_of_isColimit_cofan",
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
  "slug": "isseparator-iff-of-iscolimit-cofan--3f3098f6e584837c1948309f",
  "source": {
    "blob": "cfb9ce0dbb604e21f777704c1f7761eeba7f2ee5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 736,
    "line": 730,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f3098f6e584837c1948309fd6ae51e30625b55ed86345ed1879c4c21230a7b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8b9b1a9-4266-50f2-18bc-20c0da785a04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSeparator_iff_of_isColimit_cofan {β : Type w} {f : β → C}
    {c : Cofan f} (hc : IsColimit c) :
    IsSeparator c.pt ↔ ObjectProperty.IsSeparating (.ofObj f) := by
  refine ⟨fun h X Y u v huv => ?_, fun h => isSeparator_of_isColimit_cofan h hc⟩
  refine h.def _ _ fun g => hc.hom_ext fun b => ?_
  simpa using! huv (f b.as) (by simp) (c.inj _ ≫ g)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant166de1a932e5fa7be30eb97ed184f3674aba511fcf63dce033ef2e3e49127fdc.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfb9ce0dbb604e21f777704c1f7761eeba7f2ee5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
