# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormMulLeMax.Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.Finset.nnnorm_prod_le_sup_nnnorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e488bcc-f327-6339-41f2-b900adbaa31f",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormMulLeMax.Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.Finset.nnnorm_prod_le_sup_nnnorm",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-normmullemax-variantdbcc--7edb7b7056c81fe0cc2cbe30",
  "source": {
    "blob": "599deda5cbea27bbb7ec2dd26f13f10b8033ff8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 231,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7edb7b7056c81fe0cc2cbe30d4c62ad304596286696a64960c2c0e24839b38c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e488bcc-f327-6339-41f2-b900adbaa31f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormMulLeMax.Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.Finset.nnnorm_prod_le_sup_nnnorm (s : Finset ι) (f : ι → M) :
    ‖∏ i ∈ s, f i‖₊ ≤ s.sup (‖f ·‖₊) := by
  rcases s.eq_empty_or_nonempty with rfl | hs
  · simp
  · simpa only [← Finset.sup'_eq_sup hs, Finset.le_sup'_iff, coe_le_coe, coe_nnnorm']
      using! hs.norm_prod_le_sup'_norm f

/--
Generalised ultrametric triangle inequality for finite products in commutative groups with
an ultrametric norm.
-/
@[to_additive /-- Generalised ultrametric triangle inequality for finite sums in additive
commutative groups with an ultrametric norm. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599deda5cbea27bbb7ec2dd26f13f10b8033ff8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
