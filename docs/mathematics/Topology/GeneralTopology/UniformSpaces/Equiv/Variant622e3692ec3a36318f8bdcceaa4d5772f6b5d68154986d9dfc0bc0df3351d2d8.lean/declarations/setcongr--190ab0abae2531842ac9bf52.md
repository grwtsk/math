# setCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95bc1a4259343dadbb028c7e21279486d77c181f1a07c463665981be6e4d0356",
  "kind": "def",
  "lexical_name": "setCongr",
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
  "slug": "setcongr--190ab0abae2531842ac9bf52",
  "source": {
    "blob": "5185e4aa7c61696b0669b320a6a82a6421659f5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622e3692ec3a36318f8bdcceaa4d5772f6b5d68154986d9dfc0bc0df3351d2d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:190ab0abae2531842ac9bf52ed73b45dfb23043cb24ab3ce6c45d15b6a5c0922",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622e3692ec3a36318f8bdcceaa4d5772f6b5d68154986d9dfc0bc0df3351d2d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95bc1a4259343dadbb028c7e21279486d77c181f1a07c463665981be6e4d0356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setCongr {s t : Set α} (h : s = t) : s ≃ᵤ t where
  uniformContinuous_toFun := uniformContinuous_subtype_val.subtype_mk _
  uniformContinuous_invFun := uniformContinuous_subtype_val.subtype_mk _
  toEquiv := Equiv.setCongr h

/-- Product of two uniform isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622e3692ec3a36318f8bdcceaa4d5772f6b5d68154986d9dfc0bc0df3351d2d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622e3692ec3a36318f8bdcceaa4d5772f6b5d68154986d9dfc0bc0df3351d2d8.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5185e4aa7c61696b0669b320a6a82a6421659f5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
