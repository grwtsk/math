# factorization_lcmUpto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c8cfa1c80208c55ab335abde127ee6837384a7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91acad9a-1a54-82bb-55de-345d4d937ddd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6843781f-f240-1aa3-fb3a-7673e331fbd2",
  "kind": "theorem",
  "lexical_name": "factorization_lcmUpto",
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
  "slug": "factorization-lcmupto--d03c2abbbd0989e51f4fe3b3",
  "source": {
    "blob": "4c8cfa1c80208c55ab335abde127ee6837384a7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d03c2abbbd0989e51f4fe3b3a279f39efbc0d67c808c201db287578786aa7b97",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6843781f-f240-1aa3-fb3a-7673e331fbd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_lcmUpto (n : ℕ) {p : ℕ} (hp : p.Prime) : (lcmUpto n).factorization p = p.log n := calc
  _ = (Icc 1 n).sup (fun k => k.factorization p) := Finset.factorization_lcm (fun k hk => by aesop) p
  _ = _ := by
    have := hp.one_lt
    refine le_antisymm ?_ ?_
    · simp only [Finset.sup_le_iff, mem_Icc, and_imp]
      intro m h1 h2
      exact le_log_of_pow_le this
        (le_of_dvd (Order.one_le_iff_pos.mp h1) (ordProj_dvd m p) |>.trans h2)
    rcases le_or_gt p n with _ | h
    · have := pow_log_le_self p (x := n) (by linarith)
      grw [← le_sup (b := p ^ p.log n) (by grind)]
      simp [hp]
    simp [log_of_lt h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantcc7a33983a8101ce758c4185060677906ef4e1dca4a0e43aa2132bb8d6a9272d.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c8cfa1c80208c55ab335abde127ee6837384a7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
