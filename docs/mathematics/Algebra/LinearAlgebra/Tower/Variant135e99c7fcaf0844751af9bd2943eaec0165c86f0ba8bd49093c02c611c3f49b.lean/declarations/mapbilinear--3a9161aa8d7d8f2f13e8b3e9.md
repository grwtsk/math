# mapBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ebd80ba8922e516afcbec40f5d3828f94554246419788fadbd049b1fc1bd1f1",
  "kind": "def",
  "lexical_name": "mapBilinear",
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
  "slug": "mapbilinear--3a9161aa8d7d8f2f13e8b3e9",
  "source": {
    "blob": "9e96c3b96ddcaabda397daee32a310c5340c99ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant135e99c7fcaf0844751af9bd2943eaec0165c86f0ba8bd49093c02c611c3f49b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a9161aa8d7d8f2f13e8b3e9ca4fe696de0c2a19723e1dda2e31ace84c65513d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variant135e99c7fcaf0844751af9bd2943eaec0165c86f0ba8bd49093c02c611c3f49b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ebd80ba8922e516afcbec40f5d3828f94554246419788fadbd049b1fc1bd1f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapBilinear : (M →ₗ[A] P) →ₗ[B] (N →ₗ[R] Q) →ₗ[R] (M ⊗[R] N →ₗ[A] P ⊗[R] Q) :=
  LinearMap.mk₂' _ _ map map_add_left map_smul_left map_add_right map_smul_right

variable {R A B M N P Q}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variant135e99c7fcaf0844751af9bd2943eaec0165c86f0ba8bd49093c02c611c3f49b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variant135e99c7fcaf0844751af9bd2943eaec0165c86f0ba8bd49093c02c611c3f49b.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e96c3b96ddcaabda397daee32a310c5340c99ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
