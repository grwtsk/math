# Set.SeparatesPointsStrongly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bd80191a05aebb65f9067b5b9eb536cd1770dbf934a8b8d0b5ec9b7f292aa98",
  "kind": "def",
  "lexical_name": "Set.SeparatesPointsStrongly",
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
  "slug": "set-separatespointsstrongly--b8132a1407f13a22ee9d2c76",
  "source": {
    "blob": "773b887421db050a3ea5a35744a08b5aca3fb957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 765,
    "line": 755,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant10f9ea29ac86d2df79982f5d2cdbf29a2f783afa600cd934785a5c26551104a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8132a1407f13a22ee9d2c764dca5b1f439044f8680726eea202acf4d1856561",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant10f9ea29ac86d2df79982f5d2cdbf29a2f783afa600cd934785a5c26551104a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bd80191a05aebb65f9067b5b9eb536cd1770dbf934a8b8d0b5ec9b7f292aa98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Set.SeparatesPointsStrongly (s : Set C(α, 𝕜)) : Prop :=
  ∀ (v : α → 𝕜) (x y : α), ∃ f ∈ s, (f x : 𝕜) = v x ∧ f y = v y

variable [Field 𝕜] [IsTopologicalRing 𝕜]

/-- Working in continuous functions into a topological field,
a subalgebra of functions that separates points also separates points strongly.

By the hypothesis, we can find a function `f` so `f x ≠ f y`.
By an affine transformation in the field we can arrange so that `f x = a` and `f x = b`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant10f9ea29ac86d2df79982f5d2cdbf29a2f783afa600cd934785a5c26551104a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant10f9ea29ac86d2df79982f5d2cdbf29a2f783afa600cd934785a5c26551104a5.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `773b887421db050a3ea5a35744a08b5aca3fb957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
