# admitted_requires_authority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1a8b614abe05adbaa4806538bf401a968bfec09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 770,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb7313b7-33e8-dea5-62c2-651119f1a31a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c90b4918-7966-d13f-9b1f-4ecda61d513d",
  "kind": "theorem",
  "lexical_name": "admitted_requires_authority",
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
  "slug": "admitted-requires-authority--1862a56bc382bb7842f7b4be",
  "source": {
    "blob": "c1a8b614abe05adbaa4806538bf401a968bfec09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 770,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1862a56bc382bb7842f7b4bed7cae31afe1917d2ba5e9292f4dc6bd578e9fcae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c90b4918-7966-d13f-9b1f-4ecda61d513d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 770–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admitted_requires_authority
    {Agent : Type*} [DecidableEq Agent]
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {Symbol : Type*} [Fintype Symbol]
    (proposal :
      CoordinatedReflectiveNeuralProposal Agent Layer tower Symbol)
    (admitted : proposal.admission.Admissible) :
    proposal.admission.authorityValid :=
  proposal.admission.admissible_authority_valid admitted

/--
The envelope's realized neural output is the exact selected pool realization,
so its target-relative error is no larger than any admitted pool alternative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean#L770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1a8b614abe05adbaa4806538bf401a968bfec09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
