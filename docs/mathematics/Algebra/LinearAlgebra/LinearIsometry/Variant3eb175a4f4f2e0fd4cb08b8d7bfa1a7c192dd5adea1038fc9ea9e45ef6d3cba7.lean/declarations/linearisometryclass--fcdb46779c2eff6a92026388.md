# LinearIsometryClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e034798dc61deaf02ca2dac777132e521333b67e7c8ca5be71f478f504e5197",
  "kind": "abbrev",
  "lexical_name": "LinearIsometryClass",
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
  "slug": "linearisometryclass--fcdb46779c2eff6a92026388",
  "source": {
    "blob": "b34cd00c041c4c10d8ec6e3ffb2d6d583574137f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant3eb175a4f4f2e0fd4cb08b8d7bfa1a7c192dd5adea1038fc9ea9e45ef6d3cba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcdb46779c2eff6a92026388a472ed3d76ce6abe4bb1a5afd12c458629e16666",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIsometry/Variant3eb175a4f4f2e0fd4cb08b8d7bfa1a7c192dd5adea1038fc9ea9e45ef6d3cba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e034798dc61deaf02ca2dac777132e521333b67e7c8ca5be71f478f504e5197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev LinearIsometryClass (𝓕 : Type*) (R E E₂ : outParam Type*) [Semiring R]
    [SeminormedAddCommGroup E] [SeminormedAddCommGroup E₂] [Module R E] [Module R E₂]
    [FunLike 𝓕 E E₂] :=
  SemilinearIsometryClass 𝓕 (RingHom.id R) E E₂

namespace SemilinearIsometryClass

variable [FunLike 𝓕 E E₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIsometry/Variant3eb175a4f4f2e0fd4cb08b8d7bfa1a7c192dd5adea1038fc9ea9e45ef6d3cba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant3eb175a4f4f2e0fd4cb08b8d7bfa1a7c192dd5adea1038fc9ea9e45ef6d3cba7.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b34cd00c041c4c10d8ec6e3ffb2d6d583574137f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
