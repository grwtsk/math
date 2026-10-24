# negative_nat_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ace558d2-bcad-0b93-2085-685a497ac4c5",
  "kind": "theorem",
  "lexical_name": "negative_nat_rpow",
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
  "slug": "negative-nat-rpow--4841655236b5a6f40a9c8a2f",
  "source": {
    "blob": "3b471bc684f328e516b8e4a8ebc469437b437ed2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 17,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4841655236b5a6f40a9c8a2f9b53fc1e008ae6c877e1b8e62a323b0ac0d116e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ace558d2-bcad-0b93-2085-685a497ac4c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem negative_nat_rpow {x : ℝ} (hx : 0 < x) (n : ℕ) :
    x^(-(n : ℝ)) = 1/x^n := by
  rw [Real.rpow_neg hx.le, Real.rpow_natCast, one_div]

/-- Integrability of an inverse power with a positive lower endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variantcb5f1cf8c97ac55bd86d304237177c8cdc6f6fe568219e9961cfe09ba36b7f45.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b471bc684f328e516b8e4a8ebc469437b437ed2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
