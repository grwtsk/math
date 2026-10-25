# TypeIIShellFactorBlock.block_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee1c3a4ce05b6a866e51b4e91561c23c590b74f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68c350527d3c99338dcf18f4f97fd1702055c7c64024ce4fb7689366bbfb7598.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de9dbcf8-297d-4953-d9be-2623b64359b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2450625-238e-aeaa-e714-b252cc5ff7c8",
  "kind": "theorem",
  "lexical_name": "TypeIIShellFactorBlock.block_mem",
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
  "slug": "typeiishellfactorblock-block-mem--611b1cbf093667605c606a30",
  "source": {
    "blob": "ee1c3a4ce05b6a866e51b4e91561c23c590b74f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Variant68c350527d3c99338dcf18f4f97fd1702055c7c64024ce4fb7689366bbfb7598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:611b1cbf093667605c606a30663b5377097ddf4a40da941f860baa8af4874358",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Variant68c350527d3c99338dcf18f4f97fd1702055c7c64024ce4fb7689366bbfb7598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2450625-238e-aeaa-e714-b252cc5ff7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TypeIIShellFactorBlock.block_mem {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :
    B.1 ∈ conductorThreeTypeIIBlocks N := by
  classical
  obtain ⟨m, k, hm, hk, _hshellLower, _hshellUpper, hproduct⟩ :=
    B.2
  let atom : VaughanTypeIIFactorAtom N :=
    ⟨(m.1, k.1), ⟨hproduct, hm, hk⟩⟩
  have hmgt : 1 < m.1.1 :=
    (show 1 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hm)
  have hkgt : 1 < k.1.1 :=
    (show 1 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hk)
  have hM : (typeIIFactorDyadicBlock atom).M = B.1.M := by
    exact dyadicLowerEndpoint_eq_of_mem hmgt B.1.M_isPower m.2
  have hK : (typeIIFactorDyadicBlock atom).K = B.1.K := by
    exact dyadicLowerEndpoint_eq_of_mem hkgt B.1.K_isPower k.2
  have hblock : typeIIFactorDyadicBlock atom = B.1 :=
    TypeIIDyadicBlock.ext hM hK
  rw [← hblock]
  exact typeIIFactorDyadicBlock_mem atom

/-- The left conductor-three coefficient vector on a shell block is the
existing vector on its underlying canonical factor block. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Variant68c350527d3c99338dcf18f4f97fd1702055c7c64024ce4fb7689366bbfb7598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CanonicalFactorBlock/Variant68c350527d3c99338dcf18f4f97fd1702055c7c64024ce4fb7689366bbfb7598.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee1c3a4ce05b6a866e51b4e91561c23c590b74f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
