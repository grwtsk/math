# instMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7546a0442fc6ce8a45c9a700c0db81ee0f400e2981457baccf5b0b984e0d6b43",
  "kind": "instance",
  "lexical_name": "instMulAction",
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
  "slug": "instmulaction--4e23d57448d8faa22be0f495",
  "source": {
    "blob": "d7b18a2f76582351c69ec6bcf0f9c21e4df7bce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 741,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e23d57448d8faa22be0f495f130f0789cde339892a9d5a775587f17b74e7b04",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7546a0442fc6ce8a45c9a700c0db81ee0f400e2981457baccf5b0b984e0d6b43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMulAction : MulAction 𝕜 (α →ᵇ β) :=
  DFunLike.coe_injective.mulAction _ coe_smul

end MulAction

section DistribMulAction

variable [MonoidWithZero 𝕜] [AddMonoid β] [DistribMulAction 𝕜 β] [IsBoundedSMul 𝕜 β]
variable [BoundedAdd β] [ContinuousAdd β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4a8ca6fe2838649bc862a0936b2475d99edf9f592786d5426217c4a0768d9e2b.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b18a2f76582351c69ec6bcf0f9c21e4df7bce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
