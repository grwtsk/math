# reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e579472bd16b6cec32cd7a6e0e953d3f1c5029bb46d4f76a36292e8bba43da86",
  "kind": "def",
  "lexical_name": "reflection",
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
  "slug": "reflection--8f9c33c8e200e66e273c0bef",
  "source": {
    "blob": "79b905234680e7f6790acea5f7dc2daa254cb57f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 602,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f9c33c8e200e66e273c0bef8e031937271e8ddd945de9bd8a7a04eecb253c63",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e579472bd16b6cec32cd7a6e0e953d3f1c5029bb46d4f76a36292e8bba43da86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflection (P : RootPairing ι R M N) (i : ι) : Aut P where
  weightMap := P.reflection i
  coweightMap := P.coreflection i
  indexEquiv := P.reflection_perm i
  weight_coweight_transpose := by
    ext f x
    simp only [LinearMap.coe_comp, LinearEquiv.coe_coe, comp_apply,
      PerfectPairing.toDualRight_apply, LinearMap.dualMap_apply, PerfectPairing.flip_apply_apply,
      LinearEquiv.comp_coe, LinearEquiv.trans_apply]
    rw [RootPairing.reflection_apply, RootPairing.coreflection_apply]
    simp only [← PerfectPairing.toLinearMap_apply, map_sub, map_smul, LinearMap.sub_apply,
      toLinearMap_eq_toPerfectPairing, LinearMap.smul_apply, smul_eq_mul, sub_right_inj]
    simp [mul_comm]
  root_weightMap := by ext; simp
  coroot_coweightMap := by ext; simp
  bijective_weightMap := by
    simp only [LinearEquiv.coe_coe]
    exact LinearEquiv.bijective (P.reflection i)
  bijective_coweightMap := by
    simp only [LinearEquiv.coe_coe]
    exact LinearEquiv.bijective (P.coreflection i)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b905234680e7f6790acea5f7dc2daa254cb57f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
