# rankOne_of_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4be3e548472821fe34bdaa17f8ad8fa4de7b41e21e9ea871d48651aa67e3270d",
  "kind": "def",
  "lexical_name": "rankOne_of_exists",
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
  "slug": "rankone-of-exists--b32571144e770e9f5b343801",
  "source": {
    "blob": "34e24ceff7ab2be991953c1ca88b516b1b4d6561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 172,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b32571144e770e9f5b343801fcf1df0d29a2874d50b82e013242b10e3bd47589",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4be3e548472821fe34bdaa17f8ad8fa4de7b41e21e9ea871d48651aa67e3270d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rankOne_of_exists (H : ∃ x ≠ 0, v x ≠ 1) : RankOne v where
  exists_val_nontrivial := by
    by_contra! H'
    obtain ⟨x, hx, hx'⟩ := H
    exact hx' (H' x ((ne_zero_iff v).mpr hx))

/-- If a valuation has rank at most one and is non trivial,
then it has rank one -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e24ceff7ab2be991953c1ca88b516b1b4d6561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
