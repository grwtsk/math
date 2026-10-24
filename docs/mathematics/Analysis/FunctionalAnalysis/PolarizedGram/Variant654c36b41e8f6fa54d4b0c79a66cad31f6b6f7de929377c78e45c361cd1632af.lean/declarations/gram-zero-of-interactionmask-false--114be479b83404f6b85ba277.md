# gram_zero_of_interactionMask_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "520af6481ea913470683d426a573a3c57b24597c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 260,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0188ec35-aada-b335-0c43-42cb6b82a0b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5ab7047-2bcc-bb4d-b092-c11edf30c8b0",
  "kind": "theorem",
  "lexical_name": "gram_zero_of_interactionMask_false",
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
  "slug": "gram-zero-of-interactionmask-false--114be479b83404f6b85ba277",
  "source": {
    "blob": "520af6481ea913470683d426a573a3c57b24597c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 260,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variant654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:114be479b83404f6b85ba2777347c6a665119233999c7ecf2f6339941e125e17",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PolarizedGram/Variant654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5ab7047-2bcc-bb4d-b092-c11edf30c8b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gram_zero_of_interactionMask_false {N : ℕ}
    {frame : ConductorThreeCoefficientPacketFrame N}
    (control : PolarizedInteractionControl frame)
    (hexact : control.IsExact) (left right : frame.Atom)
    (hmask : control.interactionMask left right = false) :
    packetGram frame left right = 0 := by
  have hnorm := control.gram_small_of_mask_false left right hmask
  rw [hexact] at hnorm
  simpa using (norm_eq_zero.mp (le_antisymm hnorm (norm_nonneg _)))

/-- A generic scale-uniform frame bound for the *unsigned full Gram
operator*.  By `polarizedGram_norm_eq_gram_norm`, multiplying columns by the
conductor-three signs (or any unit phases) cannot improve this quantity.
Accordingly this predicate must not be used as the coefficient-sensitive
arithmetic cancellation theorem.  It remains useful only as ordinary frame
control. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PolarizedGram/Variant654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variant654c36b41e8f6fa54d4b0c79a66cad31f6b6f7de929377c78e45c361cd1632af.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520af6481ea913470683d426a573a3c57b24597c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
