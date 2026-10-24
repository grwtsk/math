# lmarginalPartialTraj_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adaccec323a37a53efc9eb1ca032e26de851337b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ba8c550-84a3-21a1-5071-97a4f40d6db4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdd523e6-0686-667a-246f-3f069a2ac12a",
  "kind": "lemma",
  "lexical_name": "lmarginalPartialTraj_succ",
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
  "slug": "lmarginalpartialtraj-succ--1f615bcb05fe4130c0fe74b1",
  "source": {
    "blob": "adaccec323a37a53efc9eb1ca032e26de851337b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 325,
    "path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f615bcb05fe4130c0fe74b10c76ff31e6b11233b1081408e344eea5ebb03184",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdd523e6-0686-667a-246f-3f069a2ac12a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lmarginalPartialTraj_succ [∀ n, IsSFiniteKernel (κ n)] (a : ℕ)
    {f : (Π n, X n) → ℝ≥0∞} (mf : Measurable f) (x₀ : Π n, X n) :
    lmarginalPartialTraj κ a (a + 1) f x₀ =
      ∫⁻ x : X (a + 1), f (update x₀ _ x) ∂κ a (frestrictLe a x₀) := by
  rw [lmarginalPartialTraj, partialTraj_succ_self, lintegral_map, lintegral_id_prod, lintegral_map]
  · congrm ∫⁻ x, f (fun i ↦ ?_) ∂_
    simp only [updateFinset, mem_Iic, IicProdIoc_def, frestrictLe_apply, piSingleton,
      MeasurableEquiv.coe_mk, Equiv.coe_fn_mk, update]
    split_ifs with h1 h2 h3 <;> try rfl
    all_goals omega
  all_goals fun_prop

@[measurability, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adaccec323a37a53efc9eb1ca032e26de851337b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
