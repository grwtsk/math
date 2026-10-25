# option_casesOn_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5b32a9fb28e5e6073023a67849921041ec4df68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 774,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f336601f-5ff2-8143-e06e-5a88184c1299",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e61fc25d-96d5-6b26-7141-1e56a7b2c32c",
  "kind": "theorem",
  "lexical_name": "option_casesOn_right",
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
  "slug": "option-caseson-right--55d1825aa948dab6b73b06a9",
  "source": {
    "blob": "e5b32a9fb28e5e6073023a67849921041ec4df68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 785,
    "line": 774,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55d1825aa948dab6b73b06a9c21ea7da764d14b93621dba69c74b04cbad85dfe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e61fc25d-96d5-6b26-7141-1e56a7b2c32c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–785.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem option_casesOn_right {o : α → Option β} {f : α → σ} {g : α → β →. σ} (ho : Computable o)
    (hf : Computable f) (hg : Partrec₂ g) :
    @Partrec _ σ _ _ fun a => Option.casesOn (o a) (Part.some (f a)) (g a) :=
  have :
    Partrec fun a : α =>
      Nat.casesOn (encode (o a)) (Part.some (f a)) (fun n => Part.bind (decode (α := β) n) (g a)) :=
    nat_casesOn_right (h := fun a n ↦ Part.bind (ofOption (decode n)) fun b ↦ g a b)
      (encode_iff.2 ho) hf.partrec <|
        ((@Computable.decode β _).comp snd).ofOption.bind (hg.comp (fst.comp fst) snd).to₂
  this.of_eq fun a => by cases' o a with b <;> simp [encodek]
#align partrec.option_cases_right Partrec.option_casesOn_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b32a9fb28e5e6073023a67849921041ec4df68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
