# IsSkewPrimitiveElem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3ce57432f7382be6bea11e126f7d6f1338e5e122f38acf3f69809ded8673b61",
  "kind": "structure",
  "lexical_name": "IsSkewPrimitiveElem",
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
  "slug": "isskewprimitiveelem--4d05ad5965289cf4515b3fce",
  "source": {
    "blob": "78738b7b34a5ff8f9f5319c9f13404bcfbd88173",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/Primitive/Variant43ae38cd1263e48de590ec74d1c44427266c17819e199621b4f17070228e9eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d05ad5965289cf4515b3fce4234a81d03042547ee6aecff1912c5775f6dade7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Primitive/Variant43ae38cd1263e48de590ec74d1c44427266c17819e199621b4f17070228e9eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3ce57432f7382be6bea11e126f7d6f1338e5e122f38acf3f69809ded8673b61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsSkewPrimitiveElem (g h a : A) : Prop where
  /-- A skew-primitive element `a` satisfies `ε(a) = 0`. -/
  counit_eq_zero : counit (R := R) a = 0
  /-- A `(g, h)`-skew-primitive element `a` satisfies `Δ(a) = g ⊗ₜ a + a ⊗ₜ h`. -/
  comul_eq_tmul_add_tmul : comul a = g ⊗ₜ[R] a + a ⊗ₜ[R] h

namespace IsSkewPrimitiveElem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Primitive/Variant43ae38cd1263e48de590ec74d1c44427266c17819e199621b4f17070228e9eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Primitive/Variant43ae38cd1263e48de590ec74d1c44427266c17819e199621b4f17070228e9eae.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78738b7b34a5ff8f9f5319c9f13404bcfbd88173` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
