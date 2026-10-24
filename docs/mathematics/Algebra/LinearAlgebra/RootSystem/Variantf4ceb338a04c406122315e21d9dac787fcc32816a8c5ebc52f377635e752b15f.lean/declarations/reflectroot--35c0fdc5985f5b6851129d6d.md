# reflectRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e716da7c09cba616c47e1dea97c382766eb489d5eaea0800c1be23fb8f3f919d",
  "kind": "def",
  "lexical_name": "reflectRoot",
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
  "slug": "reflectroot--35c0fdc5985f5b6851129d6d",
  "source": {
    "blob": "6a27db6fc5a41eb2c461f7a1a6f90ad29a10137a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 391,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35c0fdc5985f5b6851129d6dc426c5471306f06bcd244a386ea66181bcc8547c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e716da7c09cba616c47e1dea97c382766eb489d5eaea0800c1be23fb8f3f919d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflectRoot (α β : Weight K H L) : Weight K H L where
  toFun := β - β (coroot α) • α
  genWeightSpace_ne_bot' := by
    by_cases hα : α.IsZero
    · simpa [hα.eq] using β.genWeightSpace_ne_bot
    rw [sub_eq_neg_add, apply_coroot_eq_cast α β, ← neg_smul, ← Int.cast_neg,
      Int.cast_smul_eq_zsmul, rootSpace_zsmul_add_ne_bot_iff α β hα]
    lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootSystem/Variantf4ceb338a04c406122315e21d9dac787fcc32816a8c5ebc52f377635e752b15f.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a27db6fc5a41eb2c461f7a1a6f90ad29a10137a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
