# isDiscrete_trivialRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97ff27de-a276-29af-2ef3-9a40a78314dc",
  "kind": "lemma",
  "lexical_name": "isDiscrete_trivialRel",
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
  "slug": "isdiscrete-trivialrel--97581524297dfd725cae04c3",
  "source": {
    "blob": "386c89455540517ca562817885e91b30d095ebab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 86,
    "path": "GRWTSK/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97581524297dfd725cae04c3d65c76e34f2e01feb35481e36e8e1c5c87996da2",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97ff27de-a276-29af-2ef3-9a40a78314dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDiscrete_trivialRel [ValuativeRel R] [Valuation.Compatible (1 : Valuation R Γ)] :
    IsDiscrete R := by
  refine ⟨⟨0, zero_lt_one, fun x ↦ ?_⟩⟩
  have := subsingleton_units_valueGroupWithZero_of_trivialRel R Γ
  rcases GroupWithZero.eq_zero_or_unit x with rfl | ⟨u, rfl⟩
  · simp
  · rw [← Units.val_one, Units.val_lt_val]
    simp

end ValuativeRel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Trivial/Variant65d10cd9e356c719964324bfad1605296be5d1cd7bc94f60576dbcc8dee33971.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386c89455540517ca562817885e91b30d095ebab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
