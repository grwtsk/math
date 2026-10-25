# lift_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:948c4f4a-8944-02d7-0983-0f5e5f8d1a5b",
  "kind": "theorem",
  "lexical_name": "lift_mk",
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
  "slug": "lift-mk--6e5aec93cdadc9d4d5fcfbf9",
  "source": {
    "blob": "4be20cb0c2137de86143073205b4ec67bbfac76a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant846ac98cad94ad177f271ae3125f16b0589234553a28293cc547b2a1c2829060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e5aec93cdadc9d4d5fcfbf9b456e515f8d66d71e18aa503bf89f04a09e78c60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant846ac98cad94ad177f271ae3125f16b0589234553a28293cc547b2a1c2829060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:948c4f4a-8944-02d7-0983-0f5e5f8d1a5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_mk {i : ℕ} :
    Cardinal.lift.{v,u} #(Sequence₂ a₀ a₁ a₂ i)
      = #(Sequence₂ (ULift.{v,u} a₀) (ULift.{v,u} a₁) (ULift.{v,u} a₂) i) := by
  rcases i with (_ | _ | _ | i) <;>
    simp only [Sequence₂, mk_uLift, mk_fintype, Fintype.card_of_isEmpty, Nat.cast_zero, lift_zero]
#align first_order.sequence₂.lift_mk FirstOrder.Sequence₂.lift_mk

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant846ac98cad94ad177f271ae3125f16b0589234553a28293cc547b2a1c2829060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant846ac98cad94ad177f271ae3125f16b0589234553a28293cc547b2a1c2829060.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be20cb0c2137de86143073205b4ec67bbfac76a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
