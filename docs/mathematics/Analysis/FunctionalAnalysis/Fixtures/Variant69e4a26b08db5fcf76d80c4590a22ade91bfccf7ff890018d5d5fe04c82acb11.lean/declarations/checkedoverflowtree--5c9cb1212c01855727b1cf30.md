# checkedOverflowTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f306280aca967229a47dc1480dfb4a1a122dea53cb2bd284ee2c6d30f88e7f31",
  "kind": "def",
  "lexical_name": "checkedOverflowTree",
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
  "slug": "checkedoverflowtree--5c9cb1212c01855727b1cf30",
  "source": {
    "blob": "6aec71177b27aca901e845d38a81fd295719a61b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 306,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Fixtures/Variant69e4a26b08db5fcf76d80c4590a22ade91bfccf7ff890018d5d5fe04c82acb11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c9cb1212c01855727b1cf300cd84ca7046e2a128ffe09f163f0d747f7091ce9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Fixtures/Variant69e4a26b08db5fcf76d80c4590a22ade91bfccf7ff890018d5d5fe04c82acb11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f306280aca967229a47dc1480dfb4a1a122dea53cb2bd284ee2c6d30f88e7f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkedOverflowTree : CheckedSyntax checkedOverflowSnapshot :=
  ⟨overflowTree, checkSyntax_sound checkedOverflowSnapshot overflowTree overflow_syntax_accepted⟩

/-- Exact natural-number ledger whose root atom count is 2^64. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Fixtures/Variant69e4a26b08db5fcf76d80c4590a22ade91bfccf7ff890018d5d5fe04c82acb11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Fixtures/Variant69e4a26b08db5fcf76d80c4590a22ade91bfccf7ff890018d5d5fe04c82acb11.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aec71177b27aca901e845d38a81fd295719a61b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
