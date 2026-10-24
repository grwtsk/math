# iSup_iInf_ge_nat_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "899876d1e16e9cbc89dcea78e686033b874b77b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:962bdc4e-412f-3854-c693-ca4586ed8ee6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ab33838-8dd1-0e00-d535-a7761a6621a2",
  "kind": "theorem",
  "lexical_name": "iSup_iInf_ge_nat_add",
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
  "slug": "isup-iinf-ge-nat-add--ad09ef819f3e5eb4c2695c3d",
  "source": {
    "blob": "899876d1e16e9cbc89dcea78e686033b874b77b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad09ef819f3e5eb4c2695c3d0a4282dd6a29799a37fb350df368817789b434ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ab33838-8dd1-0e00-d535-a7761a6621a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_iInf_ge_nat_add (f : ℕ → α) (k : ℕ) :
    ⨆ n, ⨅ i ≥ n, f (i + k) = ⨆ n, ⨅ i ≥ n, f i := by
  have hf : Monotone fun n => ⨅ i ≥ n, f i := fun n m h => biInf_mono fun i => h.trans
  rw [← Monotone.iSup_nat_add hf k]
  · simp_rw [iInf_ge_eq_iInf_nat_add, ← Nat.add_assoc]

-- Porting note: removing `@[simp]`, see discussion on `iSup_iInf_ge_nat_add`.
-- @[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `899876d1e16e9cbc89dcea78e686033b874b77b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
