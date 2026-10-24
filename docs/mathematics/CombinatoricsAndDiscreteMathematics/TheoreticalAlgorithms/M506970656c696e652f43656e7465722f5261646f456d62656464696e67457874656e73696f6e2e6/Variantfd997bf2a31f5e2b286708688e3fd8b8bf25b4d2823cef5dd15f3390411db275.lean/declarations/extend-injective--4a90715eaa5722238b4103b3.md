# extend_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4ca755a-3ceb-e622-eb5c-afbcfed9b4e0",
  "kind": "theorem",
  "lexical_name": "extend_injective",
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
  "slug": "extend-injective--4a90715eaa5722238b4103b3",
  "source": {
    "blob": "9dae22b8cf8700e52575de90943044c4f810e42e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6/Variantfd997bf2a31f5e2b286708688e3fd8b8bf25b4d2823cef5dd15f3390411db275.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a90715eaa5722238b4103b3ef89c34c3d01b06b9a15fc82c742b22063141d2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6/Variantfd997bf2a31f5e2b286708688e3fd8b8bf25b4d2823cef5dd15f3390411db275.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4ca755a-3ceb-e622-eb5c-afbcfed9b4e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_injective
    {G : FiniteBoolGraph} {m z : Nat} {f : Nat -> Nat}
    (hfinj : InjectiveOnPrefix m f)
    (hzU : z ∉ NewVertexConnectList G m f)
    (hzV : z ∉ NewVertexAvoidList G m f) :
    InjectiveOnPrefix (m + 1) (extend f m z) := by
  let U := NewVertexConnectList G m f
  let V := NewVertexAvoidList G m f
  intro i j hi hj heq
  by_cases hik : i = m
  · subst i
    by_cases hjk : j = m
    · exact hjk.symm
    · have hjlt : j < m := lt_of_lt_succ_ne hj hjk
      have hgj :
          G.edge m j = true ∨ G.edge m j = false := by
        cases G.edge m j <;> simp
      rcases hgj with hgj | hgj
      · have hmem : f j ∈ U := mem_yesNeighbors hjlt hgj
        have hzneq : z ≠ f j := by
          intro hz
          exact hzU (by rw [hz]; exact hmem)
        have hnew : extend f m z m = z := by simp [extend]
        have hold : extend f m z j = f j := by simp [extend, hjk]
        rw [hnew, hold] at heq
        exact False.elim (hzneq heq)
      · have hmem : f j ∈ V := mem_noNeighbors hjlt hgj
        have hzneq : z ≠ f j := by
          intro hz
          exact hzV (by rw [hz]; exact hmem)
        have hnew : extend f m z m = z := by simp [extend]
        have hold : extend f m z j = f j := by simp [extend, hjk]
        rw [hnew, hold] at heq
        exact False.elim (hzneq heq)
  · by_cases hjk : j = m
    · subst j
      have hilt : i < m := lt_of_lt_succ_ne hi hik
      have hgi :
          G.edge m i = true ∨ G.edge m i = false := by
        cases G.edge m i <;> simp
      rcases hgi with hgi | hgi
      · have hmem : f i ∈ U := mem_yesNeighbors hilt hgi
        have hzneq : z ≠ f i := by
          intro hz
          exact hzU (by rw [hz]; exact hmem)
        have hnew : extend f m z m = z := by simp [extend]
        have hold : extend f m z i = f i := by simp [extend, hik]
        rw [hold, hnew] at heq
        exact False.elim (hzneq heq.symm)
      · have hmem : f i ∈ V := mem_noNeighbors hilt hgi
        have hzneq : z ≠ f i := by
          intro hz
          exact hzV (by rw [hz]; exact hmem)
        have hnew : extend f m z m = z := by simp [extend]
        have hold : extend f m z i = f i := by simp [extend, hik]
        rw [hold, hnew] at heq
        exact False.elim (hzneq heq.symm)
    · have hilt : i < m := lt_of_lt_succ_ne hi hik
      have hjlt : j < m := lt_of_lt_succ_ne hj hjk
      have holdi : extend f m z i = f i := by simp [extend, hik]
      have holdj : extend f m z j = f j := by simp [extend, hjk]
      apply hfinj i j hilt hjlt
      rwa [holdi, holdj] at heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6/Variantfd997bf2a31f5e2b286708688e3fd8b8bf25b4d2823cef5dd15f3390411db275.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6/Variantfd997bf2a31f5e2b286708688e3fd8b8bf25b4d2823cef5dd15f3390411db275.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dae22b8cf8700e52575de90943044c4f810e42e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
