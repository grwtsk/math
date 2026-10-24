# homOfLe_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57639bf9-e6de-f1b3-d1f6-75f7dec8ff39",
  "kind": "theorem",
  "lexical_name": "homOfLe_apply",
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
  "slug": "homofle-apply--5b963f3ed0c62fd8a24c11bb",
  "source": {
    "blob": "a2ce33549a29e0ab8210a9bc343b024214dadfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1073,
    "line": 1070,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6608f1ddc303e75072d9b14afbc1f84f4c5fea76048bb8212ce347168ec2cc81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b963f3ed0c62fd8a24c11bbac0f9161502af572a5cdfc052c760e9a410adefa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant6608f1ddc303e75072d9b14afbc1f84f4c5fea76048bb8212ce347168ec2cc81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57639bf9-e6de-f1b3-d1f6-75f7dec8ff39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1070–1073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homOfLe_apply {I₁ I₂ : LieIdeal R L} (h : I₁ ≤ I₂) (x : I₁) : homOfLe h x = ⟨x.1, h x.2⟩ :=
  rfl
#align lie_ideal.hom_of_le_apply LieIdeal.homOfLe_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant6608f1ddc303e75072d9b14afbc1f84f4c5fea76048bb8212ce347168ec2cc81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6608f1ddc303e75072d9b14afbc1f84f4c5fea76048bb8212ce347168ec2cc81.lean#L1070).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ce33549a29e0ab8210a9bc343b024214dadfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
