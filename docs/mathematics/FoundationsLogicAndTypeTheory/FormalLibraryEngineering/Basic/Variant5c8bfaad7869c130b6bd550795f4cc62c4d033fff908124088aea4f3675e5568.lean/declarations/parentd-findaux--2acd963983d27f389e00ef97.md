# parentD_findAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0959b396-af7c-45f4-c32a-8852a9b00453",
  "kind": "theorem",
  "lexical_name": "parentD_findAux",
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
  "slug": "parentd-findaux--2acd963983d27f389e00ef97",
  "source": {
    "blob": "ab5b608673240780406abd330e563429caabdafc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2acd963983d27f389e00ef97de8c7cfee93788728bb221b3ee38c4a5838bfbf3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0959b396-af7c-45f4-c32a-8852a9b00453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parentD_findAux {self : UnionFind} {x : Fin self.size} :
    parentD (findAux self x).s i =
    if i = x then self.rootD x else parentD (self.findAux ⟨_, self.parent'_lt _ x.2⟩).s i := by
  rw [findAux_s]; split <;> [split; skip]
  · subst i; rw [rootD_eq_self.2 _] <;> simp [parentD_eq, *]
  · rw [findAux_s]; simp [*]
  · next h =>
    rw [parentD]; split <;> rename_i h'
    · rw [Array.getElem_modify (by simpa using h')]
      simp only [@eq_comm _ i]
      split <;> simp [← parentD_eq]
    · rw [if_neg (mt (by rintro rfl; simp [FindAux.size_eq]) h')]
      rw [parentD, dif_neg]; simpa using h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab5b608673240780406abd330e563429caabdafc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
