# H1EquivInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44a50a091ed3a2ee9b8c3c2849f3c107d05db43596193b9e5b62962551f6b371",
  "kind": "def",
  "lexical_name": "H1EquivInt",
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
  "slug": "h1equivint--a2a1d20b21e5c2cf92a0752b",
  "source": {
    "blob": "a6a94da41144215051002565c642bd23b7c79f4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2a1d20b21e5c2cf92a0752b9bc3a231867cd4a467e95ec5afcae4fb2d27abec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44a50a091ed3a2ee9b8c3c2849f3c107d05db43596193b9e5b62962551f6b371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def H1EquivInt : H1 ≃+ ℤ := by
  change (C1 ⨸ relations) ≃+ ℤ
  rw [relations_eq_total_ker]
  refine (QuotientAddGroup.quotientKerEquivRange total).trans ?_
  rw [AddMonoidHom.range_eq_top.mpr total_surjective]
  exact AddSubgroup.topEquiv

/-- The presented group is a free integer module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variant06f6445a422506a181fe0e67145acd3ce26739faa07a3aae496561462e13e637.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6a94da41144215051002565c642bd23b7c79f4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
