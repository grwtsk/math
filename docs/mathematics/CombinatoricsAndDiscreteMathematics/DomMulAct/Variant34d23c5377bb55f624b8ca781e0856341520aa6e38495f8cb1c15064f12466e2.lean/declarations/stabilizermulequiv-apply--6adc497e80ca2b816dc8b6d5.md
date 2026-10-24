# stabilizerMulEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e722bb92687c512fe3dac450ee241b873fc8dfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:197c3240-84e4-2430-4d5f-098e263213ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24496bd4-cd41-9b81-5964-275677db391d",
  "kind": "lemma",
  "lexical_name": "stabilizerMulEquiv_apply",
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
  "slug": "stabilizermulequiv-apply--6adc497e80ca2b816dc8b6d5",
  "source": {
    "blob": "5e722bb92687c512fe3dac450ee241b873fc8dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6adc497e80ca2b816dc8b6d58cc4a9742067820d17a7d3c1865fb5f40facaa58",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24496bd4-cd41-9b81-5964-275677db391d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stabilizerMulEquiv_apply (g : (stabilizer (Perm α)ᵈᵐᵃ f)ᵐᵒᵖ) {a : α} {i : ι} (h : f a = i) :
    ((stabilizerMulEquiv f)) g i ⟨a, h⟩ = (mk.symm g.unop : Equiv.Perm α) a := rfl

section Fintype

variable [Fintype α]

open Nat

variable (f)

/-- The cardinality of the type of permutations preserving a function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e722bb92687c512fe3dac450ee241b873fc8dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
