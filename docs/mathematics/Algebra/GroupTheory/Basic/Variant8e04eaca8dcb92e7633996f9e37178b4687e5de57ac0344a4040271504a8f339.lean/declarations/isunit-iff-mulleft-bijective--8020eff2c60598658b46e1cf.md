# isUnit_iff_mulLeft_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b90b8eef-f04c-670e-8a25-c2894ce1bb71",
  "kind": "theorem",
  "lexical_name": "isUnit_iff_mulLeft_bijective",
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
  "slug": "isunit-iff-mulleft-bijective--8020eff2c60598658b46e1cf",
  "source": {
    "blob": "40fd768e30051e8e50b11ea9eec03883587d816b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 288,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8e04eaca8dcb92e7633996f9e37178b4687e5de57ac0344a4040271504a8f339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8020eff2c60598658b46e1cf27c2d408de1e5818df0eee6af3b6ce93a0b7bad7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8e04eaca8dcb92e7633996f9e37178b4687e5de57ac0344a4040271504a8f339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b90b8eef-f04c-670e-8a25-c2894ce1bb71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff_mulLeft_bijective {a : M} :
    IsUnit a ↔ Function.Bijective (a * ·) :=
  ⟨fun h ↦ ⟨h.mul_right_injective, fun y ↦ ⟨h.unit⁻¹ * y, by simp [← mul_assoc]⟩⟩, fun h ↦
    ⟨⟨a, _, (h.2 1).choose_spec, h.1
      (by simpa [mul_assoc] using congr_arg (· * a) (h.2 1).choose_spec)⟩, rfl⟩⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8e04eaca8dcb92e7633996f9e37178b4687e5de57ac0344a4040271504a8f339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8e04eaca8dcb92e7633996f9e37178b4687e5de57ac0344a4040271504a8f339.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fd768e30051e8e50b11ea9eec03883587d816b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
