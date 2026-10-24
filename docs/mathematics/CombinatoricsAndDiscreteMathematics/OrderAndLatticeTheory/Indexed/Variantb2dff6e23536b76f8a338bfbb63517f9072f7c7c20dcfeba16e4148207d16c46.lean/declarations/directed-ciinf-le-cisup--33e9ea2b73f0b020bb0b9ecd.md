# Directed.ciInf_le_ciSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a292ce939798b85cf5f6c126a59801298fd8d8f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2dff6e23536b76f8a338bfbb63517f9072f7c7c20dcfeba16e4148207d16c46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c137828c-70fb-0e1f-55c6-810b60696b7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3904bfb9-258a-b89d-596c-c8ad505f013b",
  "kind": "lemma",
  "lexical_name": "Directed.ciInf_le_ciSup",
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
  "slug": "directed-ciinf-le-cisup--33e9ea2b73f0b020bb0b9ecd",
  "source": {
    "blob": "a292ce939798b85cf5f6c126a59801298fd8d8f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantb2dff6e23536b76f8a338bfbb63517f9072f7c7c20dcfeba16e4148207d16c46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33e9ea2b73f0b020bb0b9ecd57e08d5edea46d6079c34f91d7c3365689d77454",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantb2dff6e23536b76f8a338bfbb63517f9072f7c7c20dcfeba16e4148207d16c46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3904bfb9-258a-b89d-596c-c8ad505f013b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Directed.ciInf_le_ciSup [ConditionallyCompletePartialOrder α] [Nonempty ι] {f : ι → α}
    (hd : Directed (· ≥ ·) f) (hf : BddBelow (range f))
    (hd' : Directed (· ≤ ·) f) (hf' : BddAbove (range f)) :
    ⨅ i, f i ≤ ⨆ i, f i :=
  (hd.ciInf_le hf (Classical.arbitrary _)).trans <| hd'.le_ciSup hf' (Classical.arbitrary _)

namespace GaloisConnection

section Sup

variable [ConditionallyCompletePartialOrderSup α] [ConditionallyCompletePartialOrderSup β]
    [Nonempty ι] {l : α → β} {u : β → α}

@[to_dual u_csInf_of_directedOn']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantb2dff6e23536b76f8a338bfbb63517f9072f7c7c20dcfeba16e4148207d16c46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variantb2dff6e23536b76f8a338bfbb63517f9072f7c7c20dcfeba16e4148207d16c46.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a292ce939798b85cf5f6c126a59801298fd8d8f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
