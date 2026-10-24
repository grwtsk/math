# lift_erased_reduces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fa6453e-4527-ca1f-2a6a-ad9e758df3e2",
  "kind": "theorem",
  "lexical_name": "lift_erased_reduces",
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
  "slug": "lift-erased-reduces--b7f4e8d8f7505d92aaff8754",
  "source": {
    "blob": "f89b53b22fb5c4bd4e3ea1cad0cfa6744a4dc606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1201,
    "line": 1191,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7f4e8d8f7505d92aaff8754db4c4ea5e0be14355c26f165021a48bf60b89014",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fa6453e-4527-ca1f-2a6a-ad9e758df3e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1191–1201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_erased_reduces (h : HasType P Γ M T) {N : PureTypeSystem.Expr S}
    (hr : PureTypeSystem.Reduces M.erase N) :
    ∃ M', Reduces M M' ∧ M'.erase = N ∧ HasType P Γ M' T := by
  induction hr with
  | refl => exact ⟨M, .refl, rfl, h⟩
  | tail hred hstep ih =>
      obtain ⟨M', hMM', he, ht⟩ := ih
      obtain ⟨M'', hM'M'', he'⟩ := ht.lift_erased_step (he ▸ hstep)
      exact ⟨M'', hMM'.tail hM'M'', he', ht.subject_reduction hM'M''⟩

/-- The exact final interface of the labelled-metatheory lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean#L1191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f89b53b22fb5c4bd4e3ea1cad0cfa6744a4dc606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
