# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bafca41777bb87920c4f10d1f0e75ba036c407cfcdbb694e8bd48580f94746a5",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f4f24ea04b9a63caef859b4e",
  "source": {
    "blob": "5671cc2597639c6ecf94b7e9d444121cc6dafb8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 414,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant37e98c1a1b97b6a20290874638126205d31a75a836a2a25a2f9105fedc3c6dd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4f24ea04b9a63caef859b4ee4206f3197415353fc1d34fef2ad584c1e349b12",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant37e98c1a1b97b6a20290874638126205d31a75a836a2a25a2f9105fedc3c6dd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bafca41777bb87920c4f10d1f0e75ba036c407cfcdbb694e8bd48580f94746a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {a b c d e : ℚ}
    (h1 : 3 * a + 4 * b - 2 * c + d = 15)
    (h2 : a + 2 * b + c - 2 * d + 2 * e ≤ 3)
    (h3 : 5 * a + 5 * b - c + d + 4 * e = 31)
    (h4 : 8 * a + b - c - 2 * d + 2 * e = 8)
    (h5 : 1 - 2 * b + 3 * c - 4 * d + 5 * e > -4) :
    a < 1 := by
  linear_combination (-155 * h1 + 68 * h2 + 49 * h3 + 59 * h4 + 90 * h5) / 320

/--
error: comparison failed, LHS is larger
a b : ℚ
h1 : a ≤ 1
h2 : b ≥ 0
⊢ 1 ≤ 0
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant37e98c1a1b97b6a20290874638126205d31a75a836a2a25a2f9105fedc3c6dd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant37e98c1a1b97b6a20290874638126205d31a75a836a2a25a2f9105fedc3c6dd6.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5671cc2597639c6ecf94b7e9d444121cc6dafb8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
