# Algebra.idealMap_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f822784e6b795cfb57dbb57e37efd182976883de95c7325438d49ac38b28e182",
  "kind": "instance",
  "lexical_name": "Algebra.idealMap_isLocalizedModule",
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
  "slug": "algebra-idealmap-islocalizedmodule--bbd63fa174f1a9f91cd244db",
  "source": {
    "blob": "4c329a3fecb92f5e7952dc64c79451cc02ef4272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbd63fa174f1a9f91cd244dbdc292ad37dbb223aa84e934748502abf2e0a5668",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f822784e6b795cfb57dbb57e37efd182976883de95c7325438d49ac38b28e182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Algebra.idealMap_isLocalizedModule (I : Ideal R) :
    IsLocalizedModule M (Algebra.idealMap I (S := S)) where
  map_units x :=
    (Module.End.isUnit_iff _).mpr ⟨fun a b e ↦ Subtype.ext ((map_units S x).mul_right_injective
      (by simpa [Algebra.smul_def] using congr(($e).1))),
      fun a ↦ ⟨⟨_, Ideal.mul_mem_left _ (map_units S x).unit⁻¹.1 a.2⟩,
        Subtype.ext (by simp [Algebra.smul_def, ← mul_assoc])⟩⟩
  surj' y :=
    have ⟨x, hx⟩ := (mem_map_algebraMap_iff M S).mp y.property
    ⟨x, Subtype.ext (by simp [Submonoid.smul_def, Algebra.smul_def, mul_comm, hx])⟩
  exists_of_eq h := ⟨_, Subtype.ext (exists_of_eq congr(($h).1)).choose_spec⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c329a3fecb92f5e7952dc64c79451cc02ef4272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
