# toCoinvariantsKer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d698fd48048d3e0c0c3b1045d20cdaf9bd0c1a9867d17ec4e9d515c309305202",
  "kind": "abbrev",
  "lexical_name": "toCoinvariantsKer",
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
  "slug": "tocoinvariantsker--ce18eafaac6361b57666294b",
  "source": {
    "blob": "1aef6b4af16a9d151e17d60d24257249ca5fdf2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 309,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce18eafaac6361b57666294bdf84e5468daaabbd49ba316abd67e3db6857727f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d698fd48048d3e0c0c3b1045d20cdaf9bd0c1a9867d17ec4e9d515c309305202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev toCoinvariantsKer : Rep k G := Rep.of (A.ρ.toCoinvariantsKer S)

/-- Given a normal subgroup `S ≤ G`, a `G`-representation `A` induces a `G`-representation on
the `S`-coinvariants `A_S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant8ec5be27caadf87517ef70a2208116261779939de5fa818ed4d7a8e49394489b.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aef6b4af16a9d151e17d60d24257249ca5fdf2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
