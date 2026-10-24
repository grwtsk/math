# mem_seedEntries_symbols

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cce81aed-4d19-2524-050d-c2fcc125286a",
  "kind": "theorem",
  "lexical_name": "mem_seedEntries_symbols",
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
  "slug": "mem-seedentries-symbols--cfba8cfa18110785db8b01d5",
  "source": {
    "blob": "cbaee12eb4084f25f0e46fa0bfa91a719191050a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 141,
    "path": "GRWTSK/InformationTheory/Huffman/Builder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfba8cfa18110785db8b01d55137d1d5595a204df90dfd0d58008915bae0cbc8",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cce81aed-4d19-2524-050d-c2fcc125286a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_seedEntries_symbols (weights : UInt8 → Nat) (order : Nat)
    (bytes : List UInt8) (a : UInt8) :
    a ∈ queueSymbols (seedEntries weights order bytes) ↔ a ∈ bytes ∧ 0 < weights a := by
  induction bytes generalizing order with
  | nil => simp [seedEntries, queueSymbols]
  | cons head tail ih =>
    simp only [seedEntries]
    split
    · rename_i hpositive
      simp only [queueSymbols, List.flatMap_cons, Tree.symbols, List.singleton_append,
        List.mem_cons] at *
      rw [ih]
      constructor
      · rintro (rfl | h)
        · exact ⟨by simp, hpositive⟩
        · exact ⟨by simp [h.1], h.2⟩
      · rintro ⟨hmem, hweight⟩
        rcases hmem with rfl | hmem
        · exact Or.inl rfl
        · exact Or.inr ⟨hmem, hweight⟩
    · rename_i hzero
      rw [ih]
      simp only [List.mem_cons]
      constructor
      · rintro ⟨hmem, hweight⟩
        exact ⟨Or.inr hmem, hweight⟩
      · rintro ⟨rfl | hmem, hweight⟩
        · exact False.elim (hzero hweight)
        · exact ⟨hmem, hweight⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/Builder.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbaee12eb4084f25f0e46fa0bfa91a719191050a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
