# parentD_findAux_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9011e9ee-865e-5ce2-7f62-f5b6869ca264",
  "kind": "theorem",
  "lexical_name": "parentD_findAux_or",
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
  "slug": "parentd-findaux-or--5fbd4a5fa4eddbbfe0d51ab6",
  "source": {
    "blob": "ab5b608673240780406abd330e563429caabdafc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 355,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fbd4a5fa4eddbbfe0d51ab65941ab3dad739cc8df82cb0681036cb0079a9d88",
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

Occurrence: `result:9011e9ee-865e-5ce2-7f62-f5b6869ca264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parentD_findAux_or (self : UnionFind) (x : Fin self.size) (i) :
    parentD (findAux self x).s i = self.rootD i ∧ self.rootD i = self.rootD x ∨
    parentD (findAux self x).s i = self.parent i := by
  if h' : self.arr[x.1].parent = x then
    rw [findAux_s, if_pos h']; exact .inr rfl
  else
    rw [parentD_findAux]
    split
    · simp [*]
    · have := Nat.sub_lt_sub_left (self.lt_rankMax x) (self.rank'_lt _ _ ‹_›)
      refine (parentD_findAux_or self ⟨_, self.parent'_lt _ x.2⟩ i)
        |>.imp_left (.imp_right fun h => ?_)
      simp only [h, ← parentD_eq, rootD_parent]
termination_by self.rankMax - self.rank x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab5b608673240780406abd330e563429caabdafc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
