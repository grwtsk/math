# distribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8c10870257f6de15ec8185e7b4a87e0054a31cd9d3828beb254ab02417a8f17",
  "kind": "instance",
  "lexical_name": "distribMulAction",
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
  "slug": "distribmulaction--165f44242ab4093575542baf",
  "source": {
    "blob": "e5b64bed42f59ef2e8765524b24d6104e6a0f7c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1523,
    "line": 1517,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:165f44242ab4093575542bafb3543fbbbd599fd9534a9ac5226843a053ef82ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8c10870257f6de15ec8185e7b4a87e0054a31cd9d3828beb254ab02417a8f17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1517–1523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance distribMulAction [Monoid R] [AddMonoid M] [DistribMulAction R M] :
    DistribMulAction R (α →₀ M) :=
  { Finsupp.distribSMul _ _ with
    one_smul := fun x => ext fun y => one_smul R (x y)
    mul_smul := fun r s x => ext fun y => mul_smul r s (x y) }
#align finsupp.distrib_mul_action Finsupp.distribMulAction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean#L1517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b64bed42f59ef2e8765524b24d6104e6a0f7c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
