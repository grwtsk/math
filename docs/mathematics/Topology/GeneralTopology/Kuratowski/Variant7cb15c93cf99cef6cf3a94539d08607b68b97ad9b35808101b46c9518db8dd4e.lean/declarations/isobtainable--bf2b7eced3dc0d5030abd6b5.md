# IsObtainable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d975bdcd22291ae9c9ddfe4d1155c53acf139c65ae0ea7b6828467fe158a22e1",
  "kind": "inductive",
  "lexical_name": "IsObtainable",
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
  "slug": "isobtainable--bf2b7eced3dc0d5030abd6b5",
  "source": {
    "blob": "8fb2a8108e500b9d2d6e5afb6ffde3a31f09304c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf2b7eced3dc0d5030abd6b58026395e26347bcac60c69ecb8f6ea40f1ea39cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d975bdcd22291ae9c9ddfe4d1155c53acf139c65ae0ea7b6828467fe158a22e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive IsObtainable (s : Set X) : Set X → Prop
  | base : IsObtainable s s
  | protected closure ⦃t : Set X⦄ : IsObtainable s t → IsObtainable s (closure t)
  | complement ⦃t : Set X⦄ : IsObtainable s t → IsObtainable s tᶜ

scoped notation "k" => closure
scoped notation "i" => interior

/-- The function `kckc` is idempotent: `kckckckc s = kckc s` for any set `s`.
This is because `ckc = i` and `ki` is idempotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Kuratowski/Variant7cb15c93cf99cef6cf3a94539d08607b68b97ad9b35808101b46c9518db8dd4e.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb2a8108e500b9d2d6e5afb6ffde3a31f09304c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
