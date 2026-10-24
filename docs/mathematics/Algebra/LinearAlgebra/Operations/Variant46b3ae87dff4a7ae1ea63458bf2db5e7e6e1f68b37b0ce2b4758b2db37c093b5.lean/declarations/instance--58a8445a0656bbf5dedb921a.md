# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:747ad0af648fe4dfeb8e35ff263024d81be4519ae43737b0084a94c70dcd5a58",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--58a8445a0656bbf5dedb921a",
  "source": {
    "blob": "39fd7763f0b29bfef59dad27092bf5f3538362fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58a8445a0656bbf5dedb921ae22fc10049f4e19d8bb475e9bff93d4d4a09e31b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:747ad0af648fe4dfeb8e35ff263024d81be4519ae43737b0084a94c70dcd5a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SMul (Submodule R A) (Submodule R M) where
  smul A' M' :=
  { __ := A'.toAddSubmonoid • M'.toAddSubmonoid
    smul_mem' := fun r m hm ↦ AddSubmonoid.smul_induction_on hm
      (fun a ha m hm ↦ by rw [← smul_assoc]; exact AddSubmonoid.smul_mem_smul (A'.smul_mem r ha) hm)
      fun m₁ m₂ h₁ h₂ ↦ by rw [smul_add]; exact (A'.1 • M'.1).add_mem h₁ h₂ }

section

variable {I J : Submodule R A} {N P : Submodule R M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant46b3ae87dff4a7ae1ea63458bf2db5e7e6e1f68b37b0ce2b4758b2db37c093b5.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39fd7763f0b29bfef59dad27092bf5f3538362fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
