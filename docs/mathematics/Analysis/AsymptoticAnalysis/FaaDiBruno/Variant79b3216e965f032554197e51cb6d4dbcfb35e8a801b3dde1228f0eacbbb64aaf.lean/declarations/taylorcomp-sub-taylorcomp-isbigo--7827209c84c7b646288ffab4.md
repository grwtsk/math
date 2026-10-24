# taylorComp_sub_taylorComp_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "633c4dec60f69dbd0b32039b833bf205dd58a07f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 919,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5a694df-6b12-d424-c8a1-5d62aef8597f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd3a0eaf-85f6-d906-55f7-192ff527b5cf",
  "kind": "theorem",
  "lexical_name": "taylorComp_sub_taylorComp_isBigO",
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
  "slug": "taylorcomp-sub-taylorcomp-isbigo--7827209c84c7b646288ffab4",
  "source": {
    "blob": "633c4dec60f69dbd0b32039b833bf205dd58a07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 959,
    "line": 919,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7827209c84c7b646288ffab4d63e8043ef6761494e83cfe12ecd551bd704ff9b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd3a0eaf-85f6-d906-55f7-192ff527b5cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 919–959.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylorComp_sub_taylorComp_isBigO
    {α H : Type*} [NormedAddCommGroup H] {l : Filter α} {p₁ p₂ : α → FormalMultilinearSeries 𝕜 F G}
    {q₁ q₂ : α → FormalMultilinearSeries 𝕜 E F} {f : α → H} {n : ℕ}
    (hp_bdd : ∀ k ≤ n, l.IsBoundedUnder (· ≤ ·) (‖p₁ · k‖))
    (hpf : ∀ k ≤ n, (fun a ↦ p₁ a k - p₂ a k) =O[l] f)
    (hq₁_bdd : ∀ k ≤ n, l.IsBoundedUnder (· ≤ ·) (‖q₁ · k‖))
    (hq₂_bdd : ∀ k ≤ n, l.IsBoundedUnder (· ≤ ·) (‖q₂ · k‖))
    (hqf : ∀ k ≤ n, (fun a ↦ q₁ a k - q₂ a k) =O[l] f) :
    (fun a ↦ (p₁ a).taylorComp (q₁ a) n - (p₂ a).taylorComp (q₂ a) n) =O[l] f := by
  simp only [FormalMultilinearSeries.taylorComp, ← Finset.sum_sub_distrib]
  refine .fun_sum fun c _ ↦ ?_
  refine .trans (.of_norm_le fun _ ↦
    c.norm_compAlongOrderedFinpartition_sub_compAlongOrderedFinpartition_le ..) ?_
  refine .add ?_ ?_
  · have H₁ : (p₁ · c.length) =O[l] (1 : α → ℝ) := (hp_bdd _ c.length_le).isBigO_one ℝ
    have H₂ : ∀ m, (q₁ · (c.partSize m)) =O[l] (1 : α → ℝ) := fun m ↦
      (hq₁_bdd _ <| c.partSize_le _).isBigO_one ℝ
    have H₃ : ∀ m, (q₂ · (c.partSize m)) =O[l] (1 : α → ℝ) := fun m ↦
      (hq₂_bdd _ <| c.partSize_le _).isBigO_one ℝ
    have H₄ : ∀ m, (fun a ↦ q₁ a (c.partSize m) - q₂ a (c.partSize m)) =O[l] f := fun m ↦
      hqf _ <| c.partSize_le _
    rw [← Asymptotics.isBigO_pi] at H₂ H₃ H₄
    have H₅ := ((H₂.prod_left H₃).norm_left.pow (c.length - 1)).mul H₄.norm_norm
    simpa [mul_assoc] using! H₁.norm_left.mul <| H₅.const_mul_left c.length
  · have H₁ : (fun a ↦ p₁ a c.length - p₂ a c.length) =O[l] f := hpf _ c.length_le
    have H₂ : ∀ i, (q₂ · (c.partSize i)) =O[l] (1 : α → ℝ) := fun i ↦
      (hq₂_bdd _ <| c.partSize_le i).isBigO_one ℝ
    simpa using H₁.norm_norm.mul <| .finsetProd fun i _ ↦ (H₂ i).norm_left

/-- An upper estimate (in terms of `Asymptotics.IsLittleO`)
on the difference between two compositions of Taylor series.

Let `p₁`, `p₂`, `q₁`, `q₂` be four families of formal multilinear series
depending on a parameter `a`.
Suppose that the norms of `(p₁ · k)`, `(q₁ · k)`, and `(q₂ · k)` are bounded along a filter `l`
for all `k ≤ n`.
Also, suppose that $p₁(a, k) - p₂(a, k) = o(f(a))$, $q₁(a, k) - q₂(a, k) = o(f(a))$
along `l` for all `k ≤ n`.
Then the difference between `n`th terms of `(p₁ a).taylorComp (q₁ a)` and `(p₂ a).taylorComp (q₂ a)`
is `o(f(a))` too.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean#L919).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633c4dec60f69dbd0b32039b833bf205dd58a07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
