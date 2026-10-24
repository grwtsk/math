# ReverseImplicationOrder.instOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c48306aac6c43aa2f45e8f2803c7f9031886e812417af00bb44fae574509bbd",
  "kind": "instance",
  "lexical_name": "ReverseImplicationOrder.instOrder",
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
  "slug": "reverseimplicationorder-instorder--facfb0867dfab7ef10831647",
  "source": {
    "blob": "8f7c06d86dd7e22926b1e6c87191b90941fe5424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1130,
    "line": 1124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:facfb0867dfab7ef10831647d34ea54c4b2fc694c36c93a4093066d40429abbe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c48306aac6c43aa2f45e8f2803c7f9031886e812417af00bb44fae574509bbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1124–1130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ReverseImplicationOrder.instOrder : PartialOrder ReverseImplicationOrder where
  rel x y := y → x
  rel_refl := fun x => x
  rel_trans := fun h₁ h₂ => fun x => h₁ (h₂ x)
  rel_antisymm h₁ h₂ := propext ⟨h₂, h₁⟩

-- This defines a complete lattice on `Prop`, used to define coinductive predicates
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean#L1124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f7c06d86dd7e22926b1e6c87191b90941fe5424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
