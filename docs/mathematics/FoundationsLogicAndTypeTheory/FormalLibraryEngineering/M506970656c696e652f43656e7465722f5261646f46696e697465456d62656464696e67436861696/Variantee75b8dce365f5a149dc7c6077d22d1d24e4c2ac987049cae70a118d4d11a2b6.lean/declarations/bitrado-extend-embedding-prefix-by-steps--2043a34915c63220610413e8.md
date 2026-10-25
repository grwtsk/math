# bitRado_extend_embedding_prefix_by_steps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e36cc6316a623c57de82ae0aab9ee362bd58617",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9df95362-074b-95f4-5555-f63bffe28e8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32769d85-fc4a-03a5-ff88-a7ad1a15bcb0",
  "kind": "theorem",
  "lexical_name": "bitRado_extend_embedding_prefix_by_steps",
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
  "slug": "bitrado-extend-embedding-prefix-by-steps--2043a34915c63220610413e8",
  "source": {
    "blob": "6e36cc6316a623c57de82ae0aab9ee362bd58617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e67436861696/Variantee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2043a34915c63220610413e88fb62a2b522ab37f7666ecaa85f49c713e578e30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e67436861696/Variantee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32769d85-fc4a-03a5-ff88-a7ad1a15bcb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitRado_extend_embedding_prefix_by_steps
    (G : FiniteBoolGraph)
    (m t : Nat)
    (hmt : m + t ≤ G.n)
    (f : Nat -> Nat)
    (hemb : EmbedsPrefix G m f) :
    ∃ g : Nat -> Nat,
      AgreesOnPrefix m f g ∧
        EmbedsPrefix G (m + t) g := by
  induction t with
  | zero =>
      refine ⟨f, agreesOnPrefix_refl m f, ?_⟩
      simpa using hemb
  | succ t ih =>
      have hprev : m + t ≤ G.n := by
        exact Nat.le_trans (Nat.le_add_right (m + t) 1) hmt
      obtain ⟨g, hagrees, hgemb⟩ := ih hprev
      have hlt : m + t < G.n := by
        have hsucc : (m + t) + 1 ≤ G.n := by
          simpa [Nat.add_assoc] using hmt
        exact Nat.lt_of_succ_le hsucc
      obtain ⟨z, _hzfresh, hnext⟩ :=
        bitRado_extend_finite_induced_embedding G (m + t) hlt g hgemb
      refine ⟨extend g (m + t) z, ?_, ?_⟩
      · exact
          agreesOnPrefix_extend
            (Nat.le_add_right m t)
            hagrees
      · simpa [Nat.add_assoc] using hnext

end Think.Pipeline.Center.RadoFiniteEmbeddingChain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e67436861696/Variantee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e67436861696/Variantee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e36cc6316a623c57de82ae0aab9ee362bd58617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
