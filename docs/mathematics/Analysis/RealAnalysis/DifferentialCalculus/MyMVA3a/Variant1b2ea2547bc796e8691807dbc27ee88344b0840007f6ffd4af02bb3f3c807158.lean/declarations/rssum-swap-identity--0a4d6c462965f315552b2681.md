# RSSum_swap_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:020cd056-95e4-71d3-f828-ae47d328d0c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:814a783b-70dd-b976-c567-98bc0f099710",
  "kind": "lemma",
  "lexical_name": "RSSum_swap_identity",
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
  "slug": "rssum-swap-identity--0a4d6c462965f315552b2681",
  "source": {
    "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1221,
    "line": 1201,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a4d6c462965f315552b26819e2af98ad16214224d3e3ed4f17d112d616f2d17",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:814a783b-70dd-b976-c567-98bc0f099710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1201–1221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RSSum_swap_identity {a b : ℝ} {f g : ℝ → ℝ} (P : TaggedPartition a b) :
  RSSum g f P = f b * g b - f a * g a - RSSum f g (swapTaggedPartition P) := by
    unfold swapTaggedPartition Integ.RSSum;
    -- By definition of swap_x and swap_xi, we can expand the sums.
    have h_expand : ∑ x : Fin (P.n + 1), f (swap_xi P x) * (g (swap_x P x.succ) - g (swap_x P x.castSucc)) =
      ∑ x : Fin (P.n + 1), f (P.x x) * (g (swap_x P x.succ) - g (swap_x P x.castSucc)) := by
        rfl;
    have h_telescope : ∑ x : Fin (P.n + 1), f (P.x x) * g (swap_x P x.succ) = f b * g b + ∑ x : Fin P.n, f (P.x x.castSucc) * g (P.xi x) := by
      rw [ Fin.sum_univ_castSucc ];
      simp +decide [ add_comm, swap_x ];
      exact Or.inl ( congr_arg f ( P.right ) );
    have h_telescope : ∑ x : Fin (P.n + 1), f (P.x x) * g (swap_x P x.castSucc) = f a * g a + ∑ x : Fin P.n, f (P.x x.succ) * g (P.xi x) := by
      convert Fin.sum_univ_succ _ using 1;
      congr! 2;
      · exact P.left.symm ▸ rfl;
      · unfold swap_x; aesop;
    simp_all +decide [ mul_sub, sub_mul, mul_comm, Finset.sum_add_distrib, Finset.mul_sum _ _ _ ] ; ring

/-
The length of any interval in the swapped partition is at most twice the mesh of the original partition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean#L1201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `661a74a18ecefb4e719f68267d0ff8888af929d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
