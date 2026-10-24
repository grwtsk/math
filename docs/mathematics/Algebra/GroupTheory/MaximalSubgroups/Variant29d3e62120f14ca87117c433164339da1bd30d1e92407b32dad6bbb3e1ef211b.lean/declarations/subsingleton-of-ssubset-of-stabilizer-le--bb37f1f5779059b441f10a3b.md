# subsingleton_of_ssubset_of_stabilizer_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d25261e3-911d-b870-8f85-a9bb414565be",
  "kind": "lemma",
  "lexical_name": "subsingleton_of_ssubset_of_stabilizer_le",
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
  "slug": "subsingleton-of-ssubset-of-stabilizer-le--bb37f1f5779059b441f10a3b",
  "source": {
    "blob": "ece8975cbd5117fa90122dcc7a3d6c9f944d4354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 235,
    "path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb37f1f5779059b441f10a3b5b2245e361bd60e0fc6f42504bccdb61641343b1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d25261e3-911d-b870-8f85-a9bb414565be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subsingleton_of_ssubset_of_stabilizer_le
    {B : Set α} (hB_ss_sc : B ⊂ s) (hB : IsBlock M B)
    (hG : Function.Surjective
      (MulAction.toPerm : stabilizer M (s : Set α) → Perm (s : Set α))) :
    B.Subsingleton := by
  rw [← inter_eq_self_of_subset_right (subset_of_ssubset hB_ss_sc), ← Subtype.image_preimage_val]
  apply Set.Subsingleton.image
  suffices IsTrivialBlock (Subtype.val ⁻¹' B : Set (s : Set α)) by
    apply Or.resolve_right this
    rw [preimage_eq_univ_iff, Subtype.range_coe_subtype]
    exact not_subset_of_ssubset hB_ss_sc
  suffices IsPreprimitive (stabilizer M (s : Set α)) (s : Set α) by
    apply this.isTrivialBlock_of_isBlock
    let φ' : stabilizer M (s : Set α) → M := Subtype.val
    let f' : (s : Set α) →ₑ[φ'] α := {
      toFun := Subtype.val
      map_smul' _ _ := rfl }
    exact hB.preimage f'
  exact isPreprimitive_stabilizer_of_surjective _ hG

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant29d3e62120f14ca87117c433164339da1bd30d1e92407b32dad6bbb3e1ef211b.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece8975cbd5117fa90122dcc7a3d6c9f944d4354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
