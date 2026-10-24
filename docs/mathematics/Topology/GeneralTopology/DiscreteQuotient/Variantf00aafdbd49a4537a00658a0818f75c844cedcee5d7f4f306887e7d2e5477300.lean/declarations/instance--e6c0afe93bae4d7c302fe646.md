# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68b5ca59fcd9d1a3d8b6f0da802e7e9b6d488a83c24de3faf7e645e61de88c5b",
  "kind": "instance",
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
  "slug": "instance--e6c0afe93bae4d7c302fe646",
  "source": {
    "blob": "f7e75a4555647a415020a6d4dd96ddcebd429269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 394,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6c0afe93bae4d7c302fe646b076a284bb9941a9c872107048db7750ce28eace",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68b5ca59fcd9d1a3d8b6f0da802e7e9b6d488a83c24de3faf7e645e61de88c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CompactSpace X] : Finite S := by
  have : CompactSpace S := Quotient.compactSpace
  rwa [← isCompact_univ_iff, isCompact_iff_finite, finite_univ_iff] at this

end DiscreteQuotient

namespace LocallyConstant

variable (f : LocallyConstant X α)

/-- Any locally constant function induces a discrete quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variantf00aafdbd49a4537a00658a0818f75c844cedcee5d7f4f306887e7d2e5477300.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7e75a4555647a415020a6d4dd96ddcebd429269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
