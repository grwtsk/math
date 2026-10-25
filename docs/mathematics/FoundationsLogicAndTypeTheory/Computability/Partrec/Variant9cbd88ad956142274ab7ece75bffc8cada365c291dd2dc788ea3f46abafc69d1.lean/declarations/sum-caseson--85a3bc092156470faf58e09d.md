# sum_casesOn

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
      "line": 712,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a797b1b2-4aa7-82cf-90c1-4eb4106f619e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18e05fcc-bf87-5d19-a030-524069e452eb",
  "kind": "theorem",
  "lexical_name": "sum_casesOn",
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
  "slug": "sum-caseson--85a3bc092156470faf58e09d",
  "source": {
    "blob": "e5b32a9fb28e5e6073023a67849921041ec4df68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 722,
    "line": 712,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85a3bc092156470faf58e09d9498bad94ece70015bd128c06f06c7a9c0f9851e",
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

Occurrence: `result:18e05fcc-bf87-5d19-a030-524069e452eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 712–722.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_casesOn {f : α → Sum β γ} {g : α → β → σ} {h : α → γ → σ} (hf : Computable f)
    (hg : Computable₂ g) (hh : Computable₂ h) :
    @Computable _ σ _ _ fun a => Sum.casesOn (f a) (g a) (h a) :=
  option_some_iff.1 <|
    (cond (nat_bodd.comp <| encode_iff.2 hf)
          (option_map (Computable.decode.comp <| nat_div2.comp <| encode_iff.2 hf) hh)
          (option_map (Computable.decode.comp <| nat_div2.comp <| encode_iff.2 hf) hg)).of_eq
      fun a => by
        cases' f a with b c <;> simp [Nat.div2_val]
#align computable.sum_cases Computable.sum_casesOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean#L712).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b32a9fb28e5e6073023a67849921041ec4df68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
