# ContinuousMulEquiv.piUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26bd3731c2a74509bdcef9d5d0521080d0833a63a8d040e3f05c334084f0db18",
  "kind": "def",
  "lexical_name": "ContinuousMulEquiv.piUnits",
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
  "slug": "continuousmulequiv-piunits--22e8e808d7759443bdad2f70",
  "source": {
    "blob": "242633a2b01600c8d531baef0f4e1a191297e81e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22e8e808d7759443bdad2f7005e70cd4eec165643a4044ba84fd689e2ac5e1ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26bd3731c2a74509bdcef9d5d0521080d0833a63a8d040e3f05c334084f0db18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousMulEquiv.piUnits {ι : Type*}
    {M : ι → Type*} [(i : ι) → Monoid (M i)] [(i : ι) → TopologicalSpace (M i)] :
    (Π i, M i)ˣ ≃ₜ* Π i, (M i)ˣ where
  __ := MulEquiv.piUnits
  continuous_toFun := continuous_pi fun _ ↦ Units.continuous_iff.mpr
    ⟨continuous_apply _ |>.comp Units.continuous_val,
      continuous_apply _ |>.comp Units.continuous_coe_inv⟩
  continuous_invFun := Units.continuous_iff.mpr
    ⟨continuous_pi fun _ ↦ Units.continuous_val.comp <| continuous_apply _,
      continuous_pi fun _ ↦ Units.continuous_coe_inv.comp <| continuous_apply _⟩

namespace Units

variable {M N : Type*} [TopologicalSpace M] [TopologicalSpace N] [Monoid M] [Monoid N]

/-- Any `ContinuousMulEquiv` induces a `ContinuousMulEquiv` on units. -/
@[simps! apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variantc65499133ab728471d5b9ef7d63e8ea4e2aaa8008ca6e098184e3f551e10c2e7.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242633a2b01600c8d531baef0f4e1a191297e81e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
