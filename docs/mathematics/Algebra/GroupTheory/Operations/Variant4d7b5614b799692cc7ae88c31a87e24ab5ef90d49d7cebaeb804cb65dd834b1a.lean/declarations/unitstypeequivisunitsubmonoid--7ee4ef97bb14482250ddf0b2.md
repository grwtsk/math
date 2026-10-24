# unitsTypeEquivIsUnitSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57a6f9ce42c0f532c4c713f22570a31b54d29884991e2a6814026621f3c9a607",
  "kind": "def",
  "lexical_name": "unitsTypeEquivIsUnitSubmonoid",
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
  "slug": "unitstypeequivisunitsubmonoid--7ee4ef97bb14482250ddf0b2",
  "source": {
    "blob": "b17f9bab767328aa184ca4e026031c6d92829dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1186,
    "line": 1170,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ee4ef97bb14482250ddf0b259b721354a4a4903bf7510b578c05e4d0c8728d2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57a6f9ce42c0f532c4c713f22570a31b54d29884991e2a6814026621f3c9a607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1170–1186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def unitsTypeEquivIsUnitSubmonoid {M : Type*} [Monoid M] :
    Mˣ ≃* IsUnit.submonoid M where
  toFun x := ⟨x, Units.isUnit x⟩
  invFun x := x.prop.unit
  left_inv _ := IsUnit.unit_of_val_units _
  right_inv x := by simp_rw [IsUnit.unit_spec]
  map_mul' x y := by simp_rw [Units.val_mul]; rfl

end Submonoid

end Units

namespace Submonoid

variable {F : Type*} [FunLike F M N] [mc : MonoidHomClass F M N]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean#L1170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17f9bab767328aa184ca4e026031c6d92829dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
