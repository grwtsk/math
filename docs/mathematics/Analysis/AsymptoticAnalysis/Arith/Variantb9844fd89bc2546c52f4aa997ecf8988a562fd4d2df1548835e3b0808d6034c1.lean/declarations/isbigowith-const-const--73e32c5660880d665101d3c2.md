# isBigOWith_const_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "68b06462e1d675361ceb72bcd491b608942cd99a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e94dcdcc-ab4e-69b4-7ac6-7d9033261706",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:418ecf7b-a727-a2e4-5a5b-47a42fb4ffc4",
  "kind": "theorem",
  "lexical_name": "isBigOWith_const_const",
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
  "slug": "isbigowith-const-const--73e32c5660880d665101d3c2",
  "source": {
    "blob": "68b06462e1d675361ceb72bcd491b608942cd99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 343,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73e32c5660880d665101d3c263544a157e2f320bde967dc70faf7f4233a4b77a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:418ecf7b-a727-a2e4-5a5b-47a42fb4ffc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigOWith_const_const (c : E) {c' : F''} (hc' : c' ≠ 0) (l : Filter α) :
    IsBigOWith (‖c‖ / ‖c'‖) l (fun _x : α => c) fun _x => c' := by
  simp only [IsBigOWith_def]
  apply univ_mem'
  intro x
  rw [mem_ofPred, div_mul_cancel₀ _ (norm_ne_zero_iff.mpr hc')]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Arith/Variantb9844fd89bc2546c52f4aa997ecf8988a562fd4d2df1548835e3b0808d6034c1.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b06462e1d675361ceb72bcd491b608942cd99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
