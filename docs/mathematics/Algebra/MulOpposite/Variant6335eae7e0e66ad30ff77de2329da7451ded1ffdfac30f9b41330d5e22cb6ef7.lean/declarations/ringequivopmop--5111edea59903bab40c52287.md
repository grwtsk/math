# ringEquivOpMop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1303ba00931918f4e4fe6dd7eb71dec33897cb392b8bd316c09027a211ebd654",
  "kind": "def",
  "lexical_name": "ringEquivOpMop",
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
  "slug": "ringequivopmop--5111edea59903bab40c52287",
  "source": {
    "blob": "4bfbfecdaae76ce1a862a23e8d5890abd13deeb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 160,
    "path": "GRWTSK/Algebra/MulOpposite/Variant6335eae7e0e66ad30ff77de2329da7451ded1ffdfac30f9b41330d5e22cb6ef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5111edea59903bab40c5228769637de3a96e0143799b5fbf1963eb6854fbe146",
  "verification": {
    "reference": "docs/verification/Algebra/MulOpposite/Variant6335eae7e0e66ad30ff77de2329da7451ded1ffdfac30f9b41330d5e22cb6ef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1303ba00931918f4e4fe6dd7eb71dec33897cb392b8bd316c09027a211ebd654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ringEquivOpMop (S : Subsemiring R) : S ≃+* (S.op)ᵐᵒᵖ where
  __ := S.addEquivOp.trans MulOpposite.opAddEquiv
  map_mul' _ _ := rfl

-- TODO: Add this for `[Add]Submonoid` and `[Add]Subgroup`
/-- Bijection between `MulOpposite` of a subsemiring `S` and its opposite. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MulOpposite/Variant6335eae7e0e66ad30ff77de2329da7451ded1ffdfac30f9b41330d5e22cb6ef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MulOpposite/Variant6335eae7e0e66ad30ff77de2329da7451ded1ffdfac30f9b41330d5e22cb6ef7.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bfbfecdaae76ce1a862a23e8d5890abd13deeb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
