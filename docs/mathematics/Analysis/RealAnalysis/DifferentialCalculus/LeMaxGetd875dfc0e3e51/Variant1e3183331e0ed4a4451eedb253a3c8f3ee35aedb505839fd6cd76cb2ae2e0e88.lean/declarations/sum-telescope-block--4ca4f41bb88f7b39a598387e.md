# sum_telescope_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9ca195c-fd8d-fa3c-f8dc-9a86c030896b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:364c7f71-0bfc-6798-dc85-fd95d81246c2",
  "kind": "lemma",
  "lexical_name": "sum_telescope_block",
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
  "slug": "sum-telescope-block--4ca4f41bb88f7b39a598387e",
  "source": {
    "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 417,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ca4f41bb88f7b39a598387e59c4d70be81766b4a09a0afbf615c885caad276b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:364c7f71-0bfc-6798-dc85-fd95d81246c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_telescope_block {a b : ℝ} (g : ℝ → ℝ) (R : IPartition a b) (u v : Fin (R.n + 1)) (huv : u ≤ v) :
    ∑ j ∈ Finset.Ico u.val v.val, term g R j = g (R.x v) - g (R.x u) := by
      unfold term;
      induction' v using Fin.inductionOn with v ih ; aesop;
      cases huv.eq_or_lt <;> simp_all +decide [ Fin.lt_iff_val_lt_val, Nat.lt_succ_iff ];
      rw [ Finset.sum_Ico_succ_top ( by linarith ), ih ( Nat.le_trans ( Nat.le_refl _ ) ‹_› ) ];
      simp +decide [ Fin.add_def, Nat.mod_eq_of_lt ] ; ring!

/-
A sum over consecutive intervals `[k i, k (i+1))` combines into a single sum over `[k 0, k n)`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcbe56fb3e95f5ae54e4a85a366449427e538bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
