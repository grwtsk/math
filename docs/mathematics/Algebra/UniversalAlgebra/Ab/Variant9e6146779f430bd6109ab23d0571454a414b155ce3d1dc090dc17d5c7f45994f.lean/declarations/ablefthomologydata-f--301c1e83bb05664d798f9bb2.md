# abLeftHomologyData_f'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a308aaf-998e-5934-ffb0-2576a467c46a",
  "kind": "lemma",
  "lexical_name": "abLeftHomologyData_f'",
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
  "slug": "ablefthomologydata-f--301c1e83bb05664d798f9bb2",
  "source": {
    "blob": "a1aa5b29d99c64f1bc770feba804c2b3662fb250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 82,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ab/Variant9e6146779f430bd6109ab23d0571454a414b155ce3d1dc090dc17d5c7f45994f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:301c1e83bb05664d798f9bb20c8ffa649b3cae673c4c75664d61b3a7d5ed274f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ab/Variant9e6146779f430bd6109ab23d0571454a414b155ce3d1dc090dc17d5c7f45994f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a308aaf-998e-5934-ffb0-2576a467c46a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abLeftHomologyData_f' : S.abLeftHomologyData.f' = AddCommGrpCat.ofHom S.abToCycles := rfl

/-- Given a short complex `S` of abelian groups, this is the isomorphism between
the abstract `S.cycles` of the homology API and the more concrete description as
`AddMonoidHom.ker S.g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ab/Variant9e6146779f430bd6109ab23d0571454a414b155ce3d1dc090dc17d5c7f45994f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ab/Variant9e6146779f430bd6109ab23d0571454a414b155ce3d1dc090dc17d5c7f45994f.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1aa5b29d99c64f1bc770feba804c2b3662fb250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
