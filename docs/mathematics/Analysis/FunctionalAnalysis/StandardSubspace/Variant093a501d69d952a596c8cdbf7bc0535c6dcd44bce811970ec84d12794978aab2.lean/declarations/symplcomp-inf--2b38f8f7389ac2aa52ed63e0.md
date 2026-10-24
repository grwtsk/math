# symplComp_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b703a3df30fcb7f1c7cd51a0285136e10b9ac1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5dd44c6b-effe-2f58-b8d5-4a47549792f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da32fbf3-c716-a96f-9350-a5d4b39d5ce3",
  "kind": "lemma",
  "lexical_name": "symplComp_inf",
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
  "slug": "symplcomp-inf--2b38f8f7389ac2aa52ed63e0",
  "source": {
    "blob": "2b703a3df30fcb7f1c7cd51a0285136e10b9ac1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 164,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b38f8f7389ac2aa52ed63e0fdd4901af7a5526adcb44749fab9716950e0bf07",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da32fbf3-c716-a96f-9350-a5d4b39d5ce3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma symplComp_inf [CompleteSpace H] (S T : ClosedSubmodule ℝ H) :
    (S ⊓ T).symplComp = S.symplComp ⊔ T.symplComp := by
  rw [symplComp, symplComp, symplComp, mulI_inf]
  exact Eq.symm (sup_orthogonal S.mulI T.mulI)

end ClosedSubmodule

section Def

variable (H : Type*) [NormedAddCommGroup H] [InnerProductSpace ℂ H]

/-- A standard subspace `S` of a complex Hilbert space (or just an inner product space) `H` is a
closed real subspace `S` such that `S ⊓ i S = ⊥` and `S ⊔ i S = ⊤`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b703a3df30fcb7f1c7cd51a0285136e10b9ac1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
