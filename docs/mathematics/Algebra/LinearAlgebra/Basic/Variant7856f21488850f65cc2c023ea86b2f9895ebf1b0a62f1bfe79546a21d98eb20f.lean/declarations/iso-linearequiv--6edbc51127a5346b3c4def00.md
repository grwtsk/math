# Iso.linearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd72c7383c669eda0fff9f1b20cec1127ee9ef05b5a626ae7cb8a57641cc5029",
  "kind": "def",
  "lexical_name": "Iso.linearEquiv",
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
  "slug": "iso-linearequiv--6edbc51127a5346b3c4def00",
  "source": {
    "blob": "b483316a477e936721c4f002b7aa31d398ef4d07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 543,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6edbc51127a5346b3c4def002db67e3aa8c558e423fe03fd0ac2c8ebd32f718b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd72c7383c669eda0fff9f1b20cec1127ee9ef05b5a626ae7cb8a57641cc5029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Iso.linearEquiv {X Y : Submodule R M × Submodule R M} (h : Iso X Y) :
    (X.2 ⧸ X.1.comap X.2.subtype) ≃ₗ[R] Y.2 ⧸ Y.1.comap Y.2.subtype :=
  letI e : Submodule R M × Submodule R M → Submodule R M × Submodule R M → Prop :=
    fun X Y ↦ Nonempty <| (X.2 ⧸ X.1.comap X.2.subtype) ≃ₗ[R] Y.2 ⧸ Y.1.comap Y.2.subtype
  Nonempty.some <| h.rel e ⟨.refl R _⟩ (fun ⟨f⟩ ↦ ⟨f.symm⟩) (fun ⟨f⟩ ⟨g⟩ ↦ ⟨f.trans g⟩)
    fun h ↦ by rw [sup_comm, inf_comm]; exact ⟨(LinearMap.quotientInfEquivSupQuotient ..).symm⟩

end JordanHolderLattice

section jacobson_density

open Module (End)
open Submodule

variable [IsSemisimpleModule R M]

-- Statement and proof follow [Lorenz2008], Chapter 28, F20.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b483316a477e936721c4f002b7aa31d398ef4d07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
