# minKey?_modifyKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bb2949f-5c81-5929-459e-623aed8ec7dc",
  "kind": "theorem",
  "lexical_name": "minKey?_modifyKey",
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
  "slug": "minkey-modifykey--80fe0d0990b507946a088735",
  "source": {
    "blob": "ddcb189e0bb3710a43ea511e7a5fcd0941f0a100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 8742,
    "line": 8723,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80fe0d0990b507946a088735b7b5dac1bb7aedcf31f1a1c6353b162a0c982e99",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bb2949f-5c81-5929-459e-623aed8ec7dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8723–8742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minKey?_modifyKey [Ord α] [TransOrd α] [BEq α] [LawfulBEqOrd α] {k f}
    {l : List ((_ : α) × β)} (hd : DistinctKeys l) :
    minKey? (modifyKey k f l) = (minKey? l).map fun km => if km == k then k else km := by
  cases hkm : minKey? l
  · simp_all [minKey?_eq_none_iff_isEmpty, modifyKey]
  · simp_all [minKey?_eq_some_iff_getKey?_eq_self_and_forall, hd.constModifyKey, getKey?_modifyKey]
    cases h : _ == k
    · simp_all [BEq.symm_false h, containsKey_modifyKey]
    · simp_all [containsKey_congr (BEq.symm h), containsKey_eq_isSome_getKey?,
        getKey?_modifyKey]
      intro k' hk'
      cases hcmp : compare k k' <;> try rfl
      replace hkm := hkm.2 k'
      simp only [← compare_eq_iff_beq] at *
      simp only [hcmp, reduceCtorEq, ↓reduceIte] at hk'
      specialize hkm hk'
      simp only [OrientedCmp.gt_iff_lt, Ordering.isLE_gt, Bool.false_eq_true] at *
      have := TransCmp.lt_of_isLE_of_lt hkm hcmp
      simp [this] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean#L8723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb189e0bb3710a43ea511e7a5fcd0941f0a100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
