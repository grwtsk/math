# instIsMulCommutative_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7149e19a579dc82ae8f206fdfaf832e8d241311a7442bc7070714666775a4bae",
  "kind": "instance",
  "lexical_name": "instIsMulCommutative_closure",
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
  "slug": "instismulcommutative-closure--59bcaf66a90b1fd8c9337b66",
  "source": {
    "blob": "4accdd83661a35c0cfefc908e6d8e510436fe83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 156,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantde6e9ef559f2f8446a3ccdbc5b3891fb1e0bd6e2c33b69f89ed52b8082675bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59bcaf66a90b1fd8c9337b66dc7da4d8b11be8e3f2b5ffd48d7c23170e3d85f5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variantde6e9ef559f2f8446a3ccdbc5b3891fb1e0bd6e2c33b69f89ed52b8082675bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7149e19a579dc82ae8f206fdfaf832e8d241311a7442bc7070714666775a4bae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsMulCommutative_closure {S : Type*} [SetLike S G] [MulMemClass S G] (s : S)
    [IsMulCommutative s] : IsMulCommutative (closure (s : Set G)) :=
  isMulCommutative_closure fun _ h₁ _ h₂ _ => setLike_mul_comm h₁ h₂

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variantde6e9ef559f2f8446a3ccdbc5b3891fb1e0bd6e2c33b69f89ed52b8082675bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variantde6e9ef559f2f8446a3ccdbc5b3891fb1e0bd6e2c33b69f89ed52b8082675bff.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4accdd83661a35c0cfefc908e6d8e510436fe83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
