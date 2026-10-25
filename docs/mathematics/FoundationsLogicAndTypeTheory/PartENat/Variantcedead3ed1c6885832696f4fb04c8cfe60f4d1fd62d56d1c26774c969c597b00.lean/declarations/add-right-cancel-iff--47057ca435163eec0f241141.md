# add_right_cancel_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c10aaf7e-d37e-24c8-2829-bb69da405d89",
  "kind": "theorem",
  "lexical_name": "add_right_cancel_iff",
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
  "slug": "add-right-cancel-iff--47057ca435163eec0f241141",
  "source": {
    "blob": "c6130a8b5b1c962dcaf3d83b20eabeba2045a1eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 538,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/PartENat/Variantcedead3ed1c6885832696f4fb04c8cfe60f4d1fd62d56d1c26774c969c597b00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47057ca435163eec0f2411411975a0cbef9672e96d261283f127c345c1dcc0d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/PartENat/Variantcedead3ed1c6885832696f4fb04c8cfe60f4d1fd62d56d1c26774c969c597b00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c10aaf7e-d37e-24c8-2829-bb69da405d89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem add_right_cancel_iff {a b c : PartENat} (hc : c ≠ ⊤) : a + c = b + c ↔ a = b := by
  rcases ne_top_iff.1 hc with ⟨c, rfl⟩
  refine PartENat.casesOn a ?_ ?_
  <;> refine PartENat.casesOn b ?_ ?_
  <;> simp [add_eq_top_iff, natCast_ne_top, @eq_comm _ (⊤ : PartENat), top_add]
  simp only [←Nat.cast_add, add_left_cancel_iff, PartENat.natCast_inj, add_comm, forall_const]
#align part_enat.add_right_cancel_iff PartENat.add_right_cancel_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/PartENat/Variantcedead3ed1c6885832696f4fb04c8cfe60f4d1fd62d56d1c26774c969c597b00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/PartENat/Variantcedead3ed1c6885832696f4fb04c8cfe60f4d1fd62d56d1c26774c969c597b00.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6130a8b5b1c962dcaf3d83b20eabeba2045a1eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
