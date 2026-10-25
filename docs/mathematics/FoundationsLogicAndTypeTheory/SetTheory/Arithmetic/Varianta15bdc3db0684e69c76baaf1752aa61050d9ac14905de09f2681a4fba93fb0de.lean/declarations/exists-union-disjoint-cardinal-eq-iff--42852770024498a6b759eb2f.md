# exists_union_disjoint_cardinal_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3380915e-beae-130d-4c61-86d0616ff4a4",
  "kind": "theorem",
  "lexical_name": "exists_union_disjoint_cardinal_eq_iff",
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
  "slug": "exists-union-disjoint-cardinal-eq-iff--42852770024498a6b759eb2f",
  "source": {
    "blob": "80113af484c588239e673efe5d17a2f8db376c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42852770024498a6b759eb2f50a4700561de6848673dd422aec351340fab123f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3380915e-beae-130d-4c61-86d0616ff4a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_union_disjoint_cardinal_eq_iff (s : Set α) :
    Even (s.ncard) ↔ ∃ (t u : Set α), t ∪ u = s ∧ Disjoint t u ∧ #t = #u := by
  use exists_union_disjoint_cardinal_eq_of_even
  rintro ⟨t, u, rfl, hdtu, hctu⟩
  obtain hfin | hnfin := (t ∪ u).finite_or_infinite
  · rw [finite_union] at hfin
    have hn : t.ncard = u.ncard := congrArg Cardinal.toNat hctu
    rw [ncard_union_eq hdtu hfin.1 hfin.2, hn]
    exact Even.add_self u.ncard
  · simp [hnfin.ncard]

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Varianta15bdc3db0684e69c76baaf1752aa61050d9ac14905de09f2681a4fba93fb0de.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80113af484c588239e673efe5d17a2f8db376c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
