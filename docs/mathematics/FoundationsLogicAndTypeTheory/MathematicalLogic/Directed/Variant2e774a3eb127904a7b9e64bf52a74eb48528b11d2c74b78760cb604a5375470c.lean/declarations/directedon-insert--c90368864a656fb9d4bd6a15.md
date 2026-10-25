# DirectedOn.insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f011eb89-f6ae-42fc-bf10-392a5ca29347",
  "kind": "theorem",
  "lexical_name": "DirectedOn.insert",
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
  "slug": "directedon-insert--c90368864a656fb9d4bd6a15",
  "source": {
    "blob": "8182293cdbc78e1d69c91279f5f2f146f11bd835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2e774a3eb127904a7b9e64bf52a74eb48528b11d2c74b78760cb604a5375470c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c90368864a656fb9d4bd6a15cd62d7f87cc45cd7b087ce2f2d30ee986920d4c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2e774a3eb127904a7b9e64bf52a74eb48528b11d2c74b78760cb604a5375470c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f011eb89-f6ae-42fc-bf10-392a5ca29347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem DirectedOn.insert [Std.Refl r] (a : α) {s : Set α} (hd : DirectedOn r s)
    (ha : ∀ b ∈ s, ∃ c ∈ s, a ≼ c ∧ b ≼ c) : DirectedOn r (insert a s) := by
  rintro x (rfl | hx) y (rfl | hy)
  · exact ⟨y, Set.mem_insert _ _, refl _, refl _⟩
  · obtain ⟨w, hws, hwr⟩ := ha y hy
    exact ⟨w, Set.mem_insert_of_mem _ hws, hwr⟩
  · obtain ⟨w, hws, hwr⟩ := ha x hx
    exact ⟨w, Set.mem_insert_of_mem _ hws, hwr.symm⟩
  · obtain ⟨w, hws, hwr⟩ := hd x hx y hy
    exact ⟨w, Set.mem_insert_of_mem _ hws, hwr⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2e774a3eb127904a7b9e64bf52a74eb48528b11d2c74b78760cb604a5375470c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2e774a3eb127904a7b9e64bf52a74eb48528b11d2c74b78760cb604a5375470c.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8182293cdbc78e1d69c91279f5f2f146f11bd835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
