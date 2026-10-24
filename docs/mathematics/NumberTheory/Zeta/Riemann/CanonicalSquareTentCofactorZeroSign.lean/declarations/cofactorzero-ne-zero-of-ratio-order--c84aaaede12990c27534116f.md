# cofactorZero_ne_zero_of_ratio_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bd748e5-3934-56f2-ac59-7e8a2503e9af",
  "kind": "theorem",
  "lexical_name": "cofactorZero_ne_zero_of_ratio_order",
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
  "slug": "cofactorzero-ne-zero-of-ratio-order--c84aaaede12990c27534116f",
  "source": {
    "blob": "d9ddb0482ab956012ff8c59659a0f67a283f862d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentCofactorZeroSign.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c84aaaede12990c27534116f1d92164bfeabf459810fae21c52414e0323557c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentCofactorZeroSign.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bd748e5-3934-56f2-ac59-7e8a2503e9af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cofactorZero_ne_zero_of_ratio_order
    (hratio :
      realMultiplicativeMoment 2 / realOrdinaryMoment 2 <
      realMultiplicativeMoment 1 / realOrdinaryMoment 1) :
    cofactorZero ≠ 0 := by
  have hpositive :
      0 < realOrdinaryMoment 1 ∧ 0 < realOrdinaryMoment 2 :=
    ⟨realOrdinaryMoment_pos 1, realOrdinaryMoment_pos 2⟩
  have hpos := cofactorZero_pos_of_ratio_order hpositive hratio
  intro hz
  unfold cofactorZero at hz
  have hreal :
      realOrdinaryMoment 2 * realMultiplicativeMoment 1 -
      realOrdinaryMoment 1 * realMultiplicativeMoment 2 = 0 := by
    exact_mod_cast hz
  exact (ne_of_gt hpos) hreal

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCofactorZeroSign
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentCofactorZeroSign.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentCofactorZeroSign.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9ddb0482ab956012ff8c59659a0f67a283f862d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
