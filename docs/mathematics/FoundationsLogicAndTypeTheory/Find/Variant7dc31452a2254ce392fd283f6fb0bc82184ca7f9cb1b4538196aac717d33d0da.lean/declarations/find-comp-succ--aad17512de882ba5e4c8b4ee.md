# find_comp_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11363e8b-745a-30d4-1d69-dd394a1b045e",
  "kind": "theorem",
  "lexical_name": "find_comp_succ",
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
  "slug": "find-comp-succ--aad17512de882ba5e4c8b4ee",
  "source": {
    "blob": "4a5ee9f02fca62fb93233ac9809c6678d3a2fe64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad17512de882ba5e4c8b4ee194c9360dc60462aef52a972bd83d60a0c065bdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11363e8b-745a-30d4-1d69-dd394a1b045e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find_comp_succ (h : ∃ n, p n) (h₂ : ∃ n, p (n + 1)) (h1 : ¬p 1) :
    PNat.find h = PNat.find h₂ + 1 := by
  refine (find_eq_iff _).2 ⟨PNat.find_spec h₂, fun n ↦ ?_⟩
  induction n with
  | one => simp [h1]
  | succ m _ =>
    intro hm
    simp only [add_lt_add_iff_right, lt_find_iff] at hm
    exact hm _ le_rfl

end PNat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Find/Variant7dc31452a2254ce392fd283f6fb0bc82184ca7f9cb1b4538196aac717d33d0da.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a5ee9f02fca62fb93233ac9809c6678d3a2fe64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
