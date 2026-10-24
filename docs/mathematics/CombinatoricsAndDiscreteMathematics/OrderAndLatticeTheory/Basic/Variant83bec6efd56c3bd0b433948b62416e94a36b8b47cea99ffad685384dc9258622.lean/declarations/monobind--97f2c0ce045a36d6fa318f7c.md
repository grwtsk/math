# MonoBind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd8bce86d8e78dd23883972af391617a3aff65dc4eeedd9874b55e0ab15c5704",
  "kind": "class",
  "lexical_name": "MonoBind",
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
  "slug": "monobind--97f2c0ce045a36d6fa318f7c",
  "source": {
    "blob": "8f7c06d86dd7e22926b1e6c87191b90941fe5424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 883,
    "line": 879,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97f2c0ce045a36d6fa318f7cedc8d1affbe6c739be177f312b9b4ee0fa7ea8a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd8bce86d8e78dd23883972af391617a3aff65dc4eeedd9874b55e0ab15c5704`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 879–883.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MonoBind (m : Type u → Type v) [Bind m] [∀ α, PartialOrder (m α)] where
  bind_mono_left {a₁ a₂ : m α} {f : α → m β} (h : a₁ ⊑ a₂) : a₁ >>= f ⊑ a₂ >>= f
  bind_mono_right {a : m α} {f₁ f₂ : α → m β} (h : ∀ x, f₁ x ⊑ f₂ x) : a >>= f₁ ⊑ a >>= f₂

@[partial_fixpoint_monotone]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean#L879).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f7c06d86dd7e22926b1e6c87191b90941fe5424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
