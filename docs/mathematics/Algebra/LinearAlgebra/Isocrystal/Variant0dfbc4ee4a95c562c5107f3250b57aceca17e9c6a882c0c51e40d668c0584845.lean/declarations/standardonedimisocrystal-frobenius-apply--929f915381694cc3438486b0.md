# StandardOneDimIsocrystal.frobenius_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41d0c72c-9e5e-df08-281a-c44f2b8396f8",
  "kind": "theorem",
  "lexical_name": "StandardOneDimIsocrystal.frobenius_apply",
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
  "slug": "standardonedimisocrystal-frobenius-apply--929f915381694cc3438486b0",
  "source": {
    "blob": "48517ca488282fd0ee071062f344bfbd525fd606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 186,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:929f915381694cc3438486b04922aa0496313f71480ff93300ca81536ac16d42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41d0c72c-9e5e-df08-281a-c44f2b8396f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StandardOneDimIsocrystal.frobenius_apply (m : ℤ) (x : StandardOneDimIsocrystal p k m) :
    Φ(p, k) x = (p : K(p, k)) ^ m • φ(p, k) x := rfl

end PerfectRing

/-- A one-dimensional isocrystal over an algebraically closed field
admits an isomorphism to one of the standard (indexed by `m : ℤ`) one-dimensional isocrystals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant0dfbc4ee4a95c562c5107f3250b57aceca17e9c6a882c0c51e40d668c0584845.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48517ca488282fd0ee071062f344bfbd525fd606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
