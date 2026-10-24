# comapQuotientEquivOfSurj_symm_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c29555c-c470-7d25-3db2-342a0bbd4251",
  "kind": "lemma",
  "lexical_name": "comapQuotientEquivOfSurj_symm_mk'",
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
  "slug": "comapquotientequivofsurj-symm-mk--1b091af89f3b64c8693945b4",
  "source": {
    "blob": "1d5e7e78a84506c535b66aa9c75cf419fdf49c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 262,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b091af89f3b64c8693945b43bb5b055de1a1edf974f7883e84760f7a11f306e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c29555c-c470-7d25-3db2-342a0bbd4251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comapQuotientEquivOfSurj_symm_mk' (c : Con M) (f : N ≃* M) (x : N) :
    ((@MulEquiv.symm (Con.Quotient (comap ⇑f _ c)) _ _ _
      (comapQuotientEquivOfSurj c (f : N →* M) f.surjective)) ⟦f x⟧) = ↑x :=
  (MulEquiv.symm_apply_eq (@comapQuotientEquivOfSurj M N _ _ c f _)).mpr rfl

/-- The **second isomorphism theorem for monoids**. -/
@[to_additive "The second isomorphism theorem for `AddMonoid`s."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantd10992e2346dedff452794aa6ae7eec27e88ddca439978ebe39941107d475701.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d5e7e78a84506c535b66aa9c75cf419fdf49c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
