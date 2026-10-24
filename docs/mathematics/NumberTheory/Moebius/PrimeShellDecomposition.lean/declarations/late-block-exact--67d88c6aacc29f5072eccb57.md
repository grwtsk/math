# late_block_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e42c23f-e4c4-1f7f-0b7c-4ccf14d13f40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33e1af6c-f8e0-e184-7738-09ddde4aa17b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0c4fae1-5931-223d-ec58-7b56a6d6fe52",
  "kind": "theorem",
  "lexical_name": "late_block_exact",
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
  "slug": "late-block-exact--67d88c6aacc29f5072eccb57",
  "source": {
    "blob": "41efb9b91729ef198825a01dacccfc03fad0a2b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 135,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67d88c6aacc29f5072eccb5772fc528d1508cf92c812157862921634955d1dc8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeShellDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0c4fae1-5931-223d-ec58-7b56a6d6fe52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem late_block_exact (P B : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (hB : ∀ p ∈ B, p.Prime) (hd : Disjoint B P) {T u : ℝ}
    (hlate : ∀ p ∈ B, T-Real.log (p : ℝ) < Real.log 2) (hu : u ≤ T) :
    primeState (B ∪ P) u = primeState P u - ∑ p ∈ B, atom p u := by
  classical
  induction B using Finset.induction_on with
  | empty => simp
  | @insert p B hnot ih =>
      have hp := hB p (Finset.mem_insert_self _ _)
      have hB' : ∀ q ∈ B, q.Prime := fun q hq => hB q (Finset.mem_insert_of_mem hq)
      have hd' : Disjoint B P := hd.mono_left (Finset.subset_insert _ _)
      have hpP : p ∉ P := fun h => Finset.disjoint_left.mp hd
        (Finset.mem_insert_self _ _) h
      have hpBP : p ∉ B ∪ P := by simp [hnot,hpP]
      have hpr : ∀ q ∈ B ∪ P, q.Prime := by
        intro q hq
        exact (Finset.mem_union.mp hq).elim (hB' q) (hP q)
      rw [Finset.insert_union,late_prime_insert (B ∪ P) hpr hp hpBP
        (hlate p (Finset.mem_insert_self _ _)) hu,
        ih hB' hd' (fun q hq => hlate q (Finset.mem_insert_of_mem hq)),
        Finset.sum_insert hnot]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeShellDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeShellDecomposition.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41efb9b91729ef198825a01dacccfc03fad0a2b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
