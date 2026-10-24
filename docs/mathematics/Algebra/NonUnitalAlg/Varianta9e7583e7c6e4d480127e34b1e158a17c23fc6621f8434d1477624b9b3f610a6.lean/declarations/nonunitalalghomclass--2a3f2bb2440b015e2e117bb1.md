# NonUnitalAlgHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54d78fbe15fd4c73281a6299aefd1fe829717092a4fce34e808fa02afa860dc1",
  "kind": "class",
  "lexical_name": "NonUnitalAlgHomClass",
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
  "slug": "nonunitalalghomclass--2a3f2bb2440b015e2e117bb1",
  "source": {
    "blob": "bbe045f3b02ce2a05a7f50c1dc08fe93b583a6b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a3f2bb2440b015e2e117bb15c33baf4d0e1348295740e05ac52c0a3c33cc7f5",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54d78fbe15fd4c73281a6299aefd1fe829717092a4fce34e808fa02afa860dc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NonUnitalAlgHomClass (F : Type*) (R : outParam (Type*)) (A : outParam (Type*))
  (B : outParam (Type*)) [Monoid R] [NonUnitalNonAssocSemiring A] [NonUnitalNonAssocSemiring B]
  [DistribMulAction R A] [DistribMulAction R B] extends DistribMulActionHomClass F R A B,
  MulHomClass F A B
#align non_unital_alg_hom_class NonUnitalAlgHomClass

-- Porting note: commented out, not dangerous
-- attribute [nolint dangerousInstance] NonUnitalAlgHomClass.toMulHomClass

namespace NonUnitalAlgHomClass

-- Porting note: Made following instance non-dangerous through [...] -> [...] replacement
-- See note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalAlg/Varianta9e7583e7c6e4d480127e34b1e158a17c23fc6621f8434d1477624b9b3f610a6.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe045f3b02ce2a05a7f50c1dc08fe93b583a6b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
