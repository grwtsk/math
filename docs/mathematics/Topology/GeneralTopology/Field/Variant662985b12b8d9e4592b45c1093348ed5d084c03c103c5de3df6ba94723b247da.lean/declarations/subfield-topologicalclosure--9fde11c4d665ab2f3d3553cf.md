# Subfield.topologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a23d4bccd0b1cdbc7e87f6472468aeaf59793cae8ace571f078a7c8a79fc57ce",
  "kind": "def",
  "lexical_name": "Subfield.topologicalClosure",
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
  "slug": "subfield-topologicalclosure--9fde11c4d665ab2f3d3553cf",
  "source": {
    "blob": "a25f551574790032b7b27f17943536e680b87c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fde11c4d665ab2f3d3553cf0b3de72f2d4924585d53410938571a97f265318c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a23d4bccd0b1cdbc7e87f6472468aeaf59793cae8ace571f078a7c8a79fc57ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subfield.topologicalClosure (K : Subfield α) : Subfield α :=
  { K.toSubring.topologicalClosure with
    carrier := _root_.closure (K : Set α)
    inv_mem' := fun x hx => by
      rcases eq_or_ne x 0 with (rfl | h)
      · rwa [inv_zero]
      · rw [← inv_coe_set, ← Set.image_inv_eq_inv]
        exact mem_closure_image (continuousAt_inv₀ h) hx }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant662985b12b8d9e4592b45c1093348ed5d084c03c103c5de3df6ba94723b247da.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a25f551574790032b7b27f17943536e680b87c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
