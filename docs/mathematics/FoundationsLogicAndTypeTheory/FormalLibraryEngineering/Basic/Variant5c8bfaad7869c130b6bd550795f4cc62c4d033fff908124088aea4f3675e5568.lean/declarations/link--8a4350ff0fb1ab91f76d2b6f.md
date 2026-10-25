# link

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e198c18e3b9e6a0ce6a135ca024bb67eacb1731e0562cbea0d8f06bb995c7cfb",
  "kind": "def",
  "lexical_name": "link",
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
  "slug": "link--8a4350ff0fb1ab91f76d2b6f",
  "source": {
    "blob": "ab5b608673240780406abd330e563429caabdafc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 500,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a4350ff0fb1ab91f76d2b6f058fc23345388795d78e42e87099cdd9d8133fa7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e198c18e3b9e6a0ce6a135ca024bb67eacb1731e0562cbea0d8f06bb995c7cfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def link (self : UnionFind) (x y : Fin self.size) (yroot : self.parent y = y) : UnionFind where
  arr := linkAux self.arr x y
  parentD_lt h := by
    simp only [linkAux_size] at *
    simp only [linkAux]
    split <;> [skip; split <;> [skip; split]]
    · exact self.parentD_lt h
    · rw [parentD_set]; split <;> [exact x.2; exact self.parentD_lt h]
    · rw [parentD_set]; split
      · exact self.parent'_lt ..
      · rw [parentD_set]; split <;> [exact y.2; exact self.parentD_lt h]
    · rw [parentD_set]; split <;> [exact y.2; exact self.parentD_lt h]
  rankD_lt := by
    rw [parent, parentD_eq (Fin.is_lt _)] at yroot
    simp only [linkAux, ne_eq]
    split <;> [skip; split <;> [skip; split]]
    · exact self.rankD_lt
    · exact setParent_rankD_lt ‹_› self.rankD_lt
    · refine setParentBump_rankD_lt (.inr yroot) (Nat.le_of_eq ‹_›) self.rankD_lt (by
        simp only [parentD_set, ite_eq_right_iff]
        rintro rfl
        simp [*, parentD_eq]) fun {i} => ?_
      simp only [rankD_set]
      split
      · simp_all
      · simp_all only [Nat.lt_irrefl, not_false_eq_true,
          and_true, ite_false, ite_eq_right_iff]
        rintro rfl
        simp [rankD_eq, *]
    · exact setParent_rankD_lt (Nat.lt_of_le_of_ne (Nat.not_lt.1 ‹_›) ‹_›) self.rankD_lt

@[inherit_doc link]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5c8bfaad7869c130b6bd550795f4cc62c4d033fff908124088aea4f3675e5568.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab5b608673240780406abd330e563429caabdafc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
