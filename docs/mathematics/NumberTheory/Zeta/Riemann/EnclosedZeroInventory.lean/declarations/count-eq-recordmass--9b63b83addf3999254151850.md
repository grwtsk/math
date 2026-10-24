# count_eq_recordMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9eb93b60-e22c-8feb-3f34-562604296ba0",
  "kind": "theorem",
  "lexical_name": "count_eq_recordMass",
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
  "slug": "count-eq-recordmass--9b63b83addf3999254151850",
  "source": {
    "blob": "64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b63b83addf3999254151850e9b17c08a1ab7a4c0d5c6617a0469b68f1d50faf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9eb93b60-e22c-8feb-3f34-562604296ba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_eq_recordMass {family : List Member} {T : ℚ} {d : CoordinateData}
    (hgeom : checkGeometry family T d = true) (hloc : LocalWitnesses family d)
    (hcount : heightCount (T : ℝ) ≤ recordMass family) :
    heightCount (T : ℝ) = recordMass family := by
  classical
  obtain ⟨e, _, hm⟩ := exists_canonical_equiv hgeom hloc hcount
  calc
    _ = ∑ z : Head (T : ℝ), multiplicity z.1 := (sum_head_weights _).symm
    _ = ∑ i : RecordIndex family, multiplicity (e i).1 := (e.sum_comp _).symm
    _ = ∑ i : RecordIndex family, (memberAt family i).multiplicity := by
      apply Finset.sum_congr rfl
      intro i _
      exact hm i
    _ = _ := sum_record_weights family

/-- One actual canonical zero per separated record is derived, not assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
