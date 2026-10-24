# not_secondCountableTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a448516c-aac4-0590-7e88-9a560bb02f2c",
  "kind": "theorem",
  "lexical_name": "not_secondCountableTopology",
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
  "slug": "not-secondcountabletopology--58e8dea87e204d2a9f756c5a",
  "source": {
    "blob": "dae37ff8e037d51432129b92865ea0cdb17794b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 56,
    "path": "GRWTSK/Analysis/SeparableNotSecondCountable/Variantca14ddb532e22868458dc80192301d6d23162d2da65c604d96ec866201ad1bc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58e8dea87e204d2a9f756c5a5c61f8959f967a3f26c3563f1631fe16c2ea192e",
  "verification": {
    "reference": "docs/verification/Analysis/SeparableNotSecondCountable/Variantca14ddb532e22868458dc80192301d6d23162d2da65c604d96ec866201ad1bc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a448516c-aac4-0590-7e88-9a560bb02f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_secondCountableTopology : ¬SecondCountableTopology (ℝ ×ₗ Bool) := by
  intro h
  have : {x : ℝ ×ₗ Bool | (ofLex x).2}.Countable := by
    simpa [Prod.Lex.covBy_iff, not_covBy_of_denselyOrdered, (Bool.le_true _).not_gt,
      (Bool.false_le _).lt_iff_ne] using countable_setOfPred_covBy_left (α := ℝ ×ₗ Bool)
  refine not_countable_univ <| (this.image fun x ↦ (ofLex x).1).mono fun x _ ↦ ?_
  exact ⟨toLex (x, true), rfl, rfl⟩

end RealProdLexBool
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SeparableNotSecondCountable/Variantca14ddb532e22868458dc80192301d6d23162d2da65c604d96ec866201ad1bc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SeparableNotSecondCountable/Variantca14ddb532e22868458dc80192301d6d23162d2da65c604d96ec866201ad1bc6.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dae37ff8e037d51432129b92865ea0cdb17794b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
