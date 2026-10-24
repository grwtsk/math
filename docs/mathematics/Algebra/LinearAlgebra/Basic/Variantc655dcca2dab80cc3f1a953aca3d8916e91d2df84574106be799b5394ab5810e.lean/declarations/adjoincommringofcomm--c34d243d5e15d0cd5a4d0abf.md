# adjoinCommRingOfComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e82310aaff372135978473ca99bf46381f04b67eed826e6ed279a126b6c2135c",
  "kind": "def",
  "lexical_name": "adjoinCommRingOfComm",
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
  "slug": "adjoincommringofcomm--c34d243d5e15d0cd5a4d0abf",
  "source": {
    "blob": "d7c8fc3e12a810bf72411f6558cbfbd72c99d13c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 427,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c34d243d5e15d0cd5a4d0abffd92b84674a8fc65bd50a2bd6715f1b077b6d0a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e82310aaff372135978473ca99bf46381f04b67eed826e6ed279a126b6c2135c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adjoinCommRingOfComm {s : Set A} (hcomm : ∀ a ∈ s, ∀ b ∈ s, a * b = b * a) :
    CommRing (adjoin R s) :=
  { (adjoin R s).toRing, adjoinCommSemiringOfComm R hcomm with }
#align algebra.adjoin_comm_ring_of_comm Algebra.adjoinCommRingOfComm

end Ring

end Algebra

open Algebra Subalgebra

namespace AlgHom

variable [CommSemiring R] [Semiring A] [Semiring B] [Algebra R A] [Algebra R B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc655dcca2dab80cc3f1a953aca3d8916e91d2df84574106be799b5394ab5810e.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c8fc3e12a810bf72411f6558cbfbd72c99d13c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
