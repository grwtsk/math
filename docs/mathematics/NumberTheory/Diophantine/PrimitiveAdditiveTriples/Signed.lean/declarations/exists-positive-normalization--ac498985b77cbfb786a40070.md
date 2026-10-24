# exists_positive_normalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6982ea17-0502-6237-e3f0-2643b91d42df",
  "kind": "theorem",
  "lexical_name": "exists_positive_normalization",
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
  "slug": "exists-positive-normalization--ac498985b77cbfb786a40070",
  "source": {
    "blob": "981672b5f5c4ea8365ffa870d6f724d05fd05486",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac498985b77cbfb786a4007093e8cb0b978102d567a255be6da436f8cef92639",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6982ea17-0502-6237-e3f0-2643b91d42df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_positive_normalization :
    ∃ t : PrimitiveAdditiveTriple,
      t.c = s.height ∧ t.a * t.b * t.c = s.a.natAbs * s.b.natAbs * s.c.natAbs := by
  have ha := Int.natAbs_pos.mpr s.a_ne_zero
  have hb := Int.natAbs_pos.mpr s.b_ne_zero
  have hc := Int.natAbs_pos.mpr s.c_ne_zero
  rcases s.natAbs_add_cases with h | h | h
  · refine ⟨⟨s.a.natAbs, s.b.natAbs, s.c.natAbs, ha, hb, h, s.coprime_ab⟩, ?_, rfl⟩
    dsimp [height]
    omega
  · refine ⟨⟨s.a.natAbs, s.c.natAbs, s.b.natAbs, ha, hc, h, s.coprime_ac⟩, ?_, ?_⟩
    · dsimp [height]
      omega
    · dsimp
      ring
  · refine ⟨⟨s.b.natAbs, s.c.natAbs, s.a.natAbs, hb, hc, h, s.coprime_bc⟩, ?_, ?_⟩
    · dsimp [height]
      omega
    · dsimp
      ring

/-- A positive primitive triple gives the signed representative `(a,b,-c)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981672b5f5c4ea8365ffa870d6f724d05fd05486` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
