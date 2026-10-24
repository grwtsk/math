# toDFinsupp_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4992a1c-c979-a944-44e0-aef2f7d46784",
  "kind": "theorem",
  "lexical_name": "toDFinsupp_injective",
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
  "slug": "todfinsupp-injective--a4d0255816d9850bdfd1669b",
  "source": {
    "blob": "5798e2b04b0ea77c82431861e4c0b9cdd9ac9ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d0255816d9850bdfd1669b92dd9864d46eb5d48ba0987d5e44a810e382978a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4992a1c-c979-a944-44e0-aef2f7d46784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toDFinsupp_injective : Injective (toDFinsupp : Multiset α → Π₀ _a, ℕ) :=
  equivDFinsupp.injective
#align multiset.to_dfinsupp_injective Multiset.toDFinsupp_injective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5798e2b04b0ea77c82431861e4c0b9cdd9ac9ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
