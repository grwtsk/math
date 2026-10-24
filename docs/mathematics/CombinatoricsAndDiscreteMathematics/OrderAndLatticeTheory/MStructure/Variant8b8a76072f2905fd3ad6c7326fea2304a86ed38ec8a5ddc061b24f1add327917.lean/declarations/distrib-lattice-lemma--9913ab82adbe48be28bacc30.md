# distrib_lattice_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04757611a8c9b49f0a16dcf00f59c2572cf9fff2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:137d5866-d0ef-3678-7a58-faca8c14e07c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f411b88a-494f-dc07-480c-71da4d0b5ad5",
  "kind": "theorem",
  "lexical_name": "distrib_lattice_lemma",
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
  "slug": "distrib-lattice-lemma--9913ab82adbe48be28bacc30",
  "source": {
    "blob": "04757611a8c9b49f0a16dcf00f59c2572cf9fff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9913ab82adbe48be28bacc30a3b18d56fc1b9b40b6ed30bcce9679c5baee28bd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f411b88a-494f-dc07-480c-71da4d0b5ad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distrib_lattice_lemma [FaithfulSMul M X] {P Q R : { P : M // IsLprojection X P }} :
    ((↑P : M) + ↑Pᶜ * R) * (↑P + ↑Q * ↑R * ↑Pᶜ) = ↑P + ↑Q * ↑R * ↑Pᶜ := by
  rw [add_mul, mul_add, mul_add, (mul_assoc _ (R : M) (↑Q * ↑R * ↑Pᶜ)),
    ← mul_assoc (R : M) (↑Q * ↑R) _, ← coe_inf Q, (Pᶜ.prop.commute R.prop).eq,
    ((Q ⊓ R).prop.commute Pᶜ.prop).eq, (R.prop.commute (Q ⊓ R).prop).eq, coe_inf Q,
    mul_assoc (Q : M), ←mul_assoc, mul_assoc (R : M), (Pᶜ.prop.commute P.prop).eq, mul_compl_self,
    zero_mul, mul_zero, zero_add, add_zero, ← mul_assoc, P.prop.proj.eq,
    R.prop.proj.eq, ←coe_inf Q, mul_assoc, ((Q ⊓ R).prop.commute Pᶜ.prop).eq, ← mul_assoc,
    Pᶜ.prop.proj.eq]
#align is_Lprojection.distrib_lattice_lemma IsLprojection.distrib_lattice_lemma

--porting note: In mathlib3 we were able to directly show that `{ P : M // IsLprojection X P }` was
--  an instance of a `DistribLattice`. Trying to do that in mathlib4 fails with "error:
-- (deterministic) timeout at 'whnf', maximum number of heartbeats (800000) has been reached"
-- My workaround is to show instance Lattice first
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variant8b8a76072f2905fd3ad6c7326fea2304a86ed38ec8a5ddc061b24f1add327917.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04757611a8c9b49f0a16dcf00f59c2572cf9fff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
