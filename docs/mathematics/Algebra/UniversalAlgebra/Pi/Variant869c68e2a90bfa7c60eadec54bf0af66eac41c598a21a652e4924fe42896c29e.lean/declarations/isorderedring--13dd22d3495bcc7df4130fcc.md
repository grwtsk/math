# isOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03738194858735ca516ab09aa081633880423b7b0196847accc9721ff3a53877",
  "kind": "instance",
  "lexical_name": "isOrderedRing",
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
  "slug": "isorderedring--13dd22d3495bcc7df4130fcc",
  "source": {
    "blob": "1e0c53c72608adca41c72ec85eee4cae498e76a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13dd22d3495bcc7df4130fccd3de1821042190fa9c15469ec6008418072e8143",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03738194858735ca516ab09aa081633880423b7b0196847accc9721ff3a53877`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isOrderedRing [∀ i, Semiring (f i)] [∀ i, PartialOrder (f i)] [∀ i, IsOrderedRing (f i)] :
    IsOrderedRing (∀ i, f i) where
  add_le_add_left _ _ hab _ := fun _ => add_le_add_left (hab _) _
  zero_le_one := fun i => zero_le_one (α := f i)
  mul_le_mul_of_nonneg_left _ _ _ hab hc := fun _ => mul_le_mul_of_nonneg_left (hab _) <| hc _
  mul_le_mul_of_nonneg_right _ _ _ hab hc := fun _ => mul_le_mul_of_nonneg_right (hab _) <| hc _

end Pi

namespace Function
section const
variable (β) [One α] [Preorder α] {a : α}

@[to_additive const_nonneg_of_nonneg]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pi/Variant869c68e2a90bfa7c60eadec54bf0af66eac41c598a21a652e4924fe42896c29e.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e0c53c72608adca41c72ec85eee4cae498e76a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
