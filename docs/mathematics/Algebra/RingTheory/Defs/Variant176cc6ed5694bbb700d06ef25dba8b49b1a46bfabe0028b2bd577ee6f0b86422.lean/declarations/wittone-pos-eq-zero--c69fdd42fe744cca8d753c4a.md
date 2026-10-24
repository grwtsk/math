# wittOne_pos_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "859c75ad0e5632852149d5f0d0c3bde7d4d0f715",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea19ea5b-3de5-fd4f-d608-c603b40ab9c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:415ac565-c917-b28c-231a-13bda6f4f1f2",
  "kind": "theorem",
  "lexical_name": "wittOne_pos_eq_zero",
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
  "slug": "wittone-pos-eq-zero--c69fdd42fe744cca8d753c4a",
  "source": {
    "blob": "859c75ad0e5632852149d5f0d0c3bde7d4d0f715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 212,
    "path": "GRWTSK/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c69fdd42fe744cca8d753c4a1ed5783bcd47b96710a2f3831130062924168cb3",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:415ac565-c917-b28c-231a-13bda6f4f1f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittOne_pos_eq_zero (n : ℕ) (hn : 0 < n) : wittOne p n = 0 := by
  apply MvPolynomial.map_injective (Int.castRingHom ℚ) Int.cast_injective
  simp only [wittOne, wittStructureRat, RingHom.map_zero, map_one, RingHom.map_one,
    map_wittStructureInt]
  induction n using Nat.strong_induction_on with | h n IH => ?_
  rw [xInTermsOfW_eq]
  simp only [map_mul, map_sub, map_sum, map_pow, bind₁_X_right,
    bind₁_C_right]
  rw [sub_mul, one_mul]
  rw [Finset.sum_eq_single 0]
  · simp only [invOf_eq_inv, one_mul, inv_pow, tsub_zero, RingHom.map_one, pow_zero]
    simp only [one_pow, one_mul, xInTermsOfW_zero, sub_self, bind₁_X_right]
  · intro i hin hi0
    rw [Finset.mem_range] at hin
    rw [IH _ hin (Nat.pos_of_ne_zero hi0), zero_pow (pow_ne_zero _ hp.1.ne_zero), mul_zero]
  · rw [Finset.mem_range]; intro; contradiction

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `859c75ad0e5632852149d5f0d0c3bde7d4d0f715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
