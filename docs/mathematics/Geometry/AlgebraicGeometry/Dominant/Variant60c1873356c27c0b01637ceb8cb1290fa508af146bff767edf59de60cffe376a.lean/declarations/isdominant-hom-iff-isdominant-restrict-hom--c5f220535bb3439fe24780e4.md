# isDominant_hom_iff_isDominant_restrict_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1710164f78ead9a02f14875eb40dfe6288a365d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3729a8bd-e283-8f46-d9d2-1361488c4282",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4142a662-842e-1c00-c252-85f155b0213f",
  "kind": "lemma",
  "lexical_name": "isDominant_hom_iff_isDominant_restrict_hom",
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
  "slug": "isdominant-hom-iff-isdominant-restrict-hom--c5f220535bb3439fe24780e4",
  "source": {
    "blob": "1710164f78ead9a02f14875eb40dfe6288a365d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5f220535bb3439fe24780e40d9dc9a2c186c38b2f0e98ffea971b47bc8ac492",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4142a662-842e-1c00-c252-85f155b0213f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDominant_hom_iff_isDominant_restrict_hom (f : X.PartialMap Y) (U : X.Opens)
    (hU : Dense (U : Set X)) (hU' : U ≤ f.domain) :
    IsDominant f.hom ↔ IsDominant (f.restrict U hU hU').hom :=
  ⟨fun _ ↦ f.isDominant_restrict_hom U hU hU',
    fun _ ↦ f.isDominant_hom_of_isDominant_restrict_hom U hU hU'⟩

set_option backward.defeqAttrib.useBackward true in
/-- Dominance of the underlying morphism is invariant under equivalence of partial maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1710164f78ead9a02f14875eb40dfe6288a365d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
