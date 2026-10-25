# fastGrowing_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1068,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1af18ea-4035-4f6c-fa77-fa7343cdef60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6046b807-e9ec-49ae-650a-fee5af9b0c0a",
  "kind": "theorem",
  "lexical_name": "fastGrowing_def",
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
  "slug": "fastgrowing-def--66abb8e5d98ae56acb170c77",
  "source": {
    "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1080,
    "line": 1068,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66abb8e5d98ae56acb170c777a76a10f6daac1cbcf4d9c8ec7798f4d1ea0dfcb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6046b807-e9ec-49ae-650a-fee5af9b0c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1068–1080.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fastGrowing_def {o : ONote} {x} (e : fundamentalSequence o = x) :
    fastGrowing o =
      match
        (motive := (x : Option ONote ⊕ (ℕ → ONote)) → FundamentalSequenceProp o x → ℕ → ℕ)
        x, e ▸ fundamentalSequence_has_prop o with
      | Sum.inl none, _ => Nat.succ
      | Sum.inl (some a), _ =>
        fun i => (fastGrowing a)^[i] i
      | Sum.inr f, _ => fun i =>
        fastGrowing (f i) i := by
  subst x
  rw [fastGrowing]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean#L1068).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d332225fdc11aed6ef487342848c15bedf4c12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
