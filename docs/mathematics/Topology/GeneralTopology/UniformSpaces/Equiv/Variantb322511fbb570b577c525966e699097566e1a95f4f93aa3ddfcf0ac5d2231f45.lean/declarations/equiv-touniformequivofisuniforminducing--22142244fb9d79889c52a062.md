# Equiv.toUniformEquivOfIsUniformInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bf0f0f1d83968cb70b54073a04a76c6e8954cfe8c8ef06b85558acdf0408dae",
  "kind": "def",
  "lexical_name": "Equiv.toUniformEquivOfIsUniformInducing",
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
  "slug": "equiv-touniformequivofisuniforminducing--22142244fb9d79889c52a062",
  "source": {
    "blob": "aa00a4348e38226e8de92bb99dcc869baeca8254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 382,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb322511fbb570b577c525966e699097566e1a95f4f93aa3ddfcf0ac5d2231f45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22142244fb9d79889c52a0624a491b78903994d4c14cbdcb01d340c9dcec4461",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb322511fbb570b577c525966e699097566e1a95f4f93aa3ddfcf0ac5d2231f45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bf0f0f1d83968cb70b54073a04a76c6e8954cfe8c8ef06b85558acdf0408dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Equiv.toUniformEquivOfIsUniformInducing [UniformSpace α] [UniformSpace β] (f : α ≃ β)
    (hf : IsUniformInducing f) : α ≃ᵤ β :=
  { f with
    uniformContinuous_toFun := hf.uniformContinuous
    uniformContinuous_invFun := hf.uniformContinuous_iff.2 <| by simpa using uniformContinuous_id }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb322511fbb570b577c525966e699097566e1a95f4f93aa3ddfcf0ac5d2231f45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb322511fbb570b577c525966e699097566e1a95f4f93aa3ddfcf0ac5d2231f45.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa00a4348e38226e8de92bb99dcc869baeca8254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
