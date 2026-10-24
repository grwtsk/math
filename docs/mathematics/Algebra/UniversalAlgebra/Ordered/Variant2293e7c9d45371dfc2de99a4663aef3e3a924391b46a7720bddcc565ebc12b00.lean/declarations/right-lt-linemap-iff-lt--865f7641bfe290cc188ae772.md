# right_lt_lineMap_iff_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85f4d26a-1351-0f82-a0b0-935c9c1a053b",
  "kind": "theorem",
  "lexical_name": "right_lt_lineMap_iff_lt",
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
  "slug": "right-lt-linemap-iff-lt--865f7641bfe290cc188ae772",
  "source": {
    "blob": "13ed2501694ccbd236e892be958410f0f8c2f837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:865f7641bfe290cc188ae7722e94984cdb1d4460a01321f1eed732d6b6cd7eef",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85f4d26a-1351-0f82-a0b0-935c9c1a053b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_lt_lineMap_iff_lt (h : r < 1) : b < lineMap a b r ↔ b < a :=
  lineMap_lt_right_iff_lt (E := Eᵒᵈ) h

end OrderedRing

section LinearOrderedRing

variable [Ring k] [LinearOrder k] [IsStrictOrderedRing k]
  [AddCommGroup E] [PartialOrder E] [IsOrderedAddMonoid E] [Module k E] [OrderedSMul k E]
  [Invertible (2 : k)] {a a' b b' : E} {r r' : k}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ed2501694ccbd236e892be958410f0f8c2f837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
