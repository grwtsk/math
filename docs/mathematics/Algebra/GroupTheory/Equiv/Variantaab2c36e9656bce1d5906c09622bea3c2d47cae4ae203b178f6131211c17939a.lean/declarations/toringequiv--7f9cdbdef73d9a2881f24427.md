# toRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a6f67dee9a8402326d42d08840d8e63355354939bc5beb02d7bb060cf2fc819",
  "kind": "def",
  "lexical_name": "toRingEquiv",
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
  "slug": "toringequiv--7f9cdbdef73d9a2881f24427",
  "source": {
    "blob": "291edc877528b5edfc8d4536327f4605a1d4bca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 852,
    "line": 843,
    "path": "GRWTSK/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f9cdbdef73d9a2881f24427802f47b19312a1e19de372cd886f019655a2d61b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a6f67dee9a8402326d42d08840d8e63355354939bc5beb02d7bb060cf2fc819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 843–852.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toRingEquiv {R S F : Type*} [Add R] [Add S] [Mul R] [Mul S] [MulEquivClass F R S] (f : F)
    (H : ∀ x y : R, f (x + y) = f x + f y) : R ≃+* S :=
  { (f : R ≃* S).toEquiv, (f : R ≃* S), AddEquiv.mk' (f : R ≃* S).toEquiv H with }
#align mul_equiv.to_ring_equiv MulEquiv.toRingEquiv

end MulEquiv

namespace AddEquiv

/-- Gives a `RingEquiv` from an element of an `AddEquivClass` preserving addition.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean#L843).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291edc877528b5edfc8d4536327f4605a1d4bca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
