# buildFuel_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00f6d06c-c07b-9551-0797-7d99d68e3c9e",
  "kind": "theorem",
  "lexical_name": "buildFuel_complete",
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
  "slug": "buildfuel-complete--c8019d02ea46a1d922653723",
  "source": {
    "blob": "cbaee12eb4084f25f0e46fa0bfa91a719191050a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 91,
    "path": "GRWTSK/InformationTheory/Huffman/Builder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8019d02ea46a1d9226537237a242f67106fbab6a2a18b23bb2f8fd4cc410e71",
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

Occurrence: `result:00f6d06c-c07b-9551-0797-7d99d68e3c9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem buildFuel_complete (fuel order : Nat) (queue : List Entry)
    (nonempty : queue ≠ []) (enough : queue.length ≤ fuel + 1) :
    ∃ tree, buildFuel fuel order queue = some tree ∧
      ∀ a, a ∈ tree.symbols ↔ a ∈ queueSymbols queue := by
  induction fuel generalizing order queue with
  | zero =>
    cases queue with
    | nil => exact False.elim (nonempty rfl)
    | cons head tail =>
      cases tail with
      | nil => exact ⟨head.tree, rfl, by intro a; simp [queueSymbols]⟩
      | cons head' tail' => simp at enough
  | succ fuel ih =>
    cases queue with
    | nil => contradiction
    | cons head tail =>
      cases tail with
      | nil => exact ⟨head.tree, rfl, by intro a; simp [queueSymbols]⟩
      | cons right tail =>
        have hlength : (insertEntry (mergeEntry order head right) tail).length ≤ fuel + 1 := by
          simp only [insertEntry_length, List.length_cons] at *
          omega
        have hnonempty : insertEntry (mergeEntry order head right) tail ≠ [] := by
          intro h
          have := insertEntry_length (mergeEntry order head right) tail
          rw [h] at this
          simp at this
        obtain ⟨tree, ht, hs⟩ := ih (order + 1) _ hnonempty hlength
        refine ⟨tree, ht, fun a => ?_⟩
        rw [hs, mem_insertEntry_symbols]
        simp [mergeEntry, Tree.symbols, queueSymbols, or_assoc]

/-- The exact ascending byte enumeration used to initialize both runtimes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Builder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/Builder.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbaee12eb4084f25f0e46fa0bfa91a719191050a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
