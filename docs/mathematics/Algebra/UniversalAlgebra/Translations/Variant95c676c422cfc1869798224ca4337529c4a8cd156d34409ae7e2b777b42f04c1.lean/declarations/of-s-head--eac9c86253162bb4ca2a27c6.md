# of_s_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a787794e-972e-405f-d6dc-85801a863572",
  "kind": "theorem",
  "lexical_name": "of_s_head",
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
  "slug": "of-s-head--eac9c86253162bb4ca2a27c6",
  "source": {
    "blob": "9ded5fcd01cb1f423a612cdb8b44d3eabbf15feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 282,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eac9c86253162bb4ca2a27c63e3d7d589d20196cef8c04a3b6241a586abed638",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a787794e-972e-405f-d6dc-85801a863572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_s_head (h : fract v ≠ 0) : (of v).s.head = some ⟨1, ⌊(fract v)⁻¹⌋⟩ := by
  change (of v).s.get? 0 = _
  rw [of_s_head_aux, stream_succ_of_some (stream_zero v) h, Option.bind]
  rfl
#align generalized_continued_fraction.of_s_head GeneralizedContinuedFraction.of_s_head

variable (K)

/-- If `a` is an integer, then the coefficient sequence of its continued fraction is empty.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ded5fcd01cb1f423a612cdb8b44d3eabbf15feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
