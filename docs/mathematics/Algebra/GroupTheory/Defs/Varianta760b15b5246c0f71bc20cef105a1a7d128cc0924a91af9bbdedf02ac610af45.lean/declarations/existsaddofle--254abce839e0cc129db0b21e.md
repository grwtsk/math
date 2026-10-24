# existsAddOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c98426e3dfbbb643acfbdd83fbf4768c21c820b4a1c158e75ebc3044d6a6324",
  "kind": "instance",
  "lexical_name": "existsAddOfLE",
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
  "slug": "existsaddofle--254abce839e0cc129db0b21e",
  "source": {
    "blob": "74969d067bf3343c9c1ae1fad00384be40543e4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 156,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Varianta760b15b5246c0f71bc20cef105a1a7d128cc0924a91af9bbdedf02ac610af45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:254abce839e0cc129db0b21eff8a608f16445b63daff82e73a503f04154d5371",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Varianta760b15b5246c0f71bc20cef105a1a7d128cc0924a91af9bbdedf02ac610af45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c98426e3dfbbb643acfbdd83fbf4768c21c820b4a1c158e75ebc3044d6a6324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance existsAddOfLE [Add α] [Preorder α] [ExistsAddOfLE α] :
    ExistsAddOfLE (WithZero α) :=
  ⟨fun {a b} => by
    induction a using WithZero.cases_on
    · exact fun _ => ⟨b, (zero_add b).symm⟩
    induction b using WithZero.cases_on
    · exact fun h => (WithBot.not_coe_le_bot _ h).elim
    intro h
    obtain ⟨c, rfl⟩ := exists_add_of_le (WithZero.coe_le_coe.1 h)
    exact ⟨c, rfl⟩⟩
#align with_zero.has_exists_add_of_le WithZero.existsAddOfLE

-- This instance looks absurd: a monoid already has a zero
/-- Adding a new zero to a canonically ordered additive monoid produces another one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Varianta760b15b5246c0f71bc20cef105a1a7d128cc0924a91af9bbdedf02ac610af45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Varianta760b15b5246c0f71bc20cef105a1a7d128cc0924a91af9bbdedf02ac610af45.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74969d067bf3343c9c1ae1fad00384be40543e4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
