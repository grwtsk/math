# pow_le_iff_le_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c6d4190-7dfb-1d94-cba2-13e18e34dc8c",
  "kind": "theorem",
  "lexical_name": "pow_le_iff_le_right",
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
  "slug": "pow-le-iff-le-right--22059a14369ea303cf1ceaac",
  "source": {
    "blob": "01890d19d8432fbab112a17bb2f33bba68dc8297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 113,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22059a14369ea303cf1ceaacb23b5393c64e7fc810e29d27a12d1cd8266c83f0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c6d4190-7dfb-1d94-cba2-13e18e34dc8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_le_iff_le_right {x m n : ℕ} (k : 2 ≤ x) : x ^ m ≤ x ^ n ↔ m ≤ n :=
  StrictMono.le_iff_le (pow_right_strictMono k)
#align nat.pow_le_iff_le_right Nat.pow_le_iff_le_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pow/Variantbe62d4fc9422bcd5855804b01e1b6b8d557e5bd8f3371bf1d1438350eedcc797.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01890d19d8432fbab112a17bb2f33bba68dc8297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
