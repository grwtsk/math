# isNoetherian_submodule'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24d6a64779fb97aad36069b10b9067bf4baf2cd8102b3273351fecb7d3aaf963",
  "kind": "instance",
  "lexical_name": "isNoetherian_submodule'",
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
  "slug": "isnoetherian-submodule--5cde20889c97486b79e03da1",
  "source": {
    "blob": "c8104f0b9179239996850f9821a09badf80961fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cde20889c97486b79e03da1d0c4abc0981eb065cb2161936ffcd34c99ea5da1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24d6a64779fb97aad36069b10b9067bf4baf2cd8102b3273351fecb7d3aaf963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isNoetherian_submodule' [IsNoetherian R M] (N : Submodule R M) : IsNoetherian R N :=
  isNoetherian_submodule.2 fun _ _ => IsNoetherian.noetherian _
#align is_noetherian_submodule' isNoetherian_submodule'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8104f0b9179239996850f9821a09badf80961fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
