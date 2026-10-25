# codeSupp_supports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11648bb1fd69b7d0f80769fec28bf90ab05672f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e04d031-031d-350a-c424-47938f0dc2bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:400e68a0-1fad-2d9e-2158-f2cc15605c56",
  "kind": "theorem",
  "lexical_name": "codeSupp_supports",
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
  "slug": "codesupp-supports--5f0ce35929efb17dec35608e",
  "source": {
    "blob": "11648bb1fd69b7d0f80769fec28bf90ab05672f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1274,
    "line": 1267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f0ce35929efb17dec35608eedcc0e624ea115f985352326a85b4417ce80322c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:400e68a0-1fad-2d9e-2158-f2cc15605c56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1267–1274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem codeSupp_supports {S c k} (H : codeSupp c k ⊆ S) : Supports (codeSupp c k) S :=
  supports_union.2 ⟨codeSupp'_supports H, contSupp_supports (Finset.union_subset_right H)⟩

/-- The set `codeSupp c k` is a finite set that witnesses the effective finiteness of the `tr`
Turing machine. Starting from the initial state `trNormal c k`, forward simulation uses only
states in `codeSupp c k`, so this is a finite state machine. Even though the underlying type of
state labels `Λ'` is infinite, for a given partial recursive function `c` and continuation `k`,
only finitely many states are accessed, corresponding roughly to subterms of `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ToPartrec/Variantc6031b11fc4d5ca1ab0db322d4d8c31b7f3fddd39f4cfe7d2bb67f1c375c942b.lean#L1267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11648bb1fd69b7d0f80769fec28bf90ab05672f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
