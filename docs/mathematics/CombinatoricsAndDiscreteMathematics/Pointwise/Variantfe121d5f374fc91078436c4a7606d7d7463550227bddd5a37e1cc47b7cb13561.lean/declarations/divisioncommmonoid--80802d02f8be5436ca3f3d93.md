# divisionCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c0cc64345316c243573a9c6fb7cbea99f83677f83ac257af4f42422519d2f25",
  "kind": "def",
  "lexical_name": "divisionCommMonoid",
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
  "slug": "divisioncommmonoid--80802d02f8be5436ca3f3d93",
  "source": {
    "blob": "d735876c87a392ebfcabed10dec71053a16ad1ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1043,
    "line": 1038,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80802d02f8be5436ca3f3d931b13367e30b9b2b6e36bfeda003b2fbb3c3a4c01",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c0cc64345316c243573a9c6fb7cbea99f83677f83ac257af4f42422519d2f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1038–1043.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def divisionCommMonoid [DivisionCommMonoid α] : DivisionCommMonoid (Finset α) :=
  coe_injective.divisionCommMonoid _ coe_one coe_mul coe_inv coe_div coe_pow coe_zpow
#align finset.division_comm_monoid Finset.divisionCommMonoid
#align finset.subtraction_comm_monoid Finset.subtractionCommMonoid

/-- `Finset α` has distributive negation if `α` has. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean#L1038).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d735876c87a392ebfcabed10dec71053a16ad1ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
