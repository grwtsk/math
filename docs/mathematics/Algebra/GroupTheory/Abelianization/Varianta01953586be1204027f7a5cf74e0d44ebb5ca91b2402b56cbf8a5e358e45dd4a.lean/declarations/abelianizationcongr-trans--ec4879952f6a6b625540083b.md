# abelianizationCongr_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6def705-17b3-d209-8901-79613083792b",
  "kind": "theorem",
  "lexical_name": "abelianizationCongr_trans",
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
  "slug": "abelianizationcongr-trans--ec4879952f6a6b625540083b",
  "source": {
    "blob": "cb0df9725c3fc70c4730e9bd0ce3e5afc8ebbf9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 250,
    "path": "GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec4879952f6a6b625540083b03206e3b586b0422f6d7d2ff97f395968b0951e0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6def705-17b3-d209-8901-79613083792b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abelianizationCongr_trans {I : Type v} [Group I] (e₂ : H ≃* I) :
    e.abelianizationCongr.trans e₂.abelianizationCongr = (e.trans e₂).abelianizationCongr :=
  MulEquiv.toMonoidHom_injective (Abelianization.hom_ext _ _ rfl)
#align abelianization_congr_trans abelianizationCongr_trans

end AbelianizationCongr

/-- An Abelian group is equivalent to its own abelianization. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb0df9725c3fc70c4730e9bd0ce3e5afc8ebbf9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
