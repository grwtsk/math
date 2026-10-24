# isQuotientMap_projIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4259e3b-9c72-8ac5-4270-1b0fee9d8ca5",
  "kind": "theorem",
  "lexical_name": "isQuotientMap_projIcc",
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
  "slug": "isquotientmap-projicc--4dc75de77d959f58c6e3f096",
  "source": {
    "blob": "5e07022e86e3b295ce2e98e659891fbb43367a88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dc75de77d959f58c6e3f096826f212165d2f138fd04ebefd7882c11c71bbc96",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4259e3b-9c72-8ac5-4270-1b0fee9d8ca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isQuotientMap_projIcc : IsQuotientMap (projIcc a b h) :=
  isQuotientMap_iff.2 ⟨projIcc_surjective h, fun s =>
    ⟨fun hs => hs.preimage continuous_projIcc, fun hs => ⟨_, hs, by ext; simp⟩⟩⟩

@[deprecated (since := "2024-10-22")]
alias quotientMap_projIcc := isQuotientMap_projIcc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e07022e86e3b295ce2e98e659891fbb43367a88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
