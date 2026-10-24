# directedOn_union_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3619fd78-b0a7-1f55-6b50-8b92296afd3a",
  "kind": "theorem",
  "lexical_name": "directedOn_union_iff",
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
  "slug": "directedon-union-iff--8bb184757988d4c4604ec98a",
  "source": {
    "blob": "95fe4d6f630c136da05cc9d32bdd106d91143580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant42033dcd23fe57639ca276ce24ee5d42e6375d3c2b51211a83fedb1946bd0af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb184757988d4c4604ec98a3b543ae77d23913a06d136cd8fc2904801509682",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant42033dcd23fe57639ca276ce24ee5d42e6375d3c2b51211a83fedb1946bd0af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3619fd78-b0a7-1f55-6b50-8b92296afd3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem directedOn_union_iff :
    DirectedOn (· ≤ ·) (s ∪ t) ↔
      DirectedOn (· ≤ ·) s ∧ IsCofinalFor t s ∨ DirectedOn (· ≤ ·) t ∧ IsCofinalFor s t := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · rcases isCofinalFor_or_isCofinalFor_of_directedOn_union h with hts | hst
    · exact .inl ⟨DirectedOn.of_isCofinalFor h subset_union_left hts.union_right, hts⟩
    · exact .inr ⟨DirectedOn.of_isCofinalFor h subset_union_right hst.union_left, hst⟩
  · rintro (⟨hs, hts⟩ | ⟨ht, hst⟩) x hx y hy
    · obtain ⟨x', hx', hxx'⟩ := hts.union_right hx
      obtain ⟨y', hy', hyy'⟩ := hts.union_right hy
      obtain ⟨z, hz, hx'z, hy'z⟩ := hs x' hx' y' hy'
      exact ⟨z, .inl hz, hxx'.trans hx'z, hyy'.trans hy'z⟩
    · obtain ⟨x', hx', hxx'⟩ := hst.union_left hx
      obtain ⟨y', hy', hyy'⟩ := hst.union_left hy
      obtain ⟨z, hz, hx'z, hy'z⟩ := ht x' hx' y' hy'
      exact ⟨z, .inr hz, hxx'.trans hx'z, hyy'.trans hy'z⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant42033dcd23fe57639ca276ce24ee5d42e6375d3c2b51211a83fedb1946bd0af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant42033dcd23fe57639ca276ce24ee5d42e6375d3c2b51211a83fedb1946bd0af7.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95fe4d6f630c136da05cc9d32bdd106d91143580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
