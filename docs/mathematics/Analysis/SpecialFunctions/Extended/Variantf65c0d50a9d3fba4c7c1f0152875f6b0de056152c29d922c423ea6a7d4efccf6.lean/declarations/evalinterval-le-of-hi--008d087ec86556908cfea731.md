# evalInterval?_le_of_hi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27744526be1e5c5eaa4a13c9532b6b350bf57077",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3aa120e-6e12-0b3e-934b-e0f3bf95fb84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7626757e-5bb8-8b6e-9faf-9ba5b21b041f",
  "kind": "theorem",
  "lexical_name": "evalInterval?_le_of_hi",
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
  "slug": "evalinterval-le-of-hi--008d087ec86556908cfea731",
  "source": {
    "blob": "27744526be1e5c5eaa4a13c9532b6b350bf57077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 430,
    "path": "GRWTSK/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:008d087ec86556908cfea7312beabc5cb8db8af5cea19d364c922b0d4a2c8303",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7626757e-5bb8-8b6e-9faf-9ba5b21b041f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalInterval?_le_of_hi (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (J : IntervalRat) (c : ℚ)
    (hsome : evalInterval?1 e I = some J)
    (hhi : J.hi ≤ c) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e ≤ c := by
  intro x hx
  have hmem := evalInterval?1_correct e hsupp I J hsome x hx
  simp only [IntervalRat.mem_def] at hmem
  have heval_le_hi : Expr.eval (fun _ => x) e ≤ J.hi := hmem.2
  have hhi_le_c : (J.hi : ℝ) ≤ c := by exact_mod_cast hhi
  exact le_trans heval_le_hi hhi_le_c

/-- When evalInterval? succeeds, we get lower bounds -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Extended/Variantf65c0d50a9d3fba4c7c1f0152875f6b0de056152c29d922c423ea6a7d4efccf6.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27744526be1e5c5eaa4a13c9532b6b350bf57077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
