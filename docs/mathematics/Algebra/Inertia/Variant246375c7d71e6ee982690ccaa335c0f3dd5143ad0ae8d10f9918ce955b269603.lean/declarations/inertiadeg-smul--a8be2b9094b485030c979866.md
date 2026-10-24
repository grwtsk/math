# inertiaDeg_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc48d095-ebe9-bbe9-03a1-4d08c4fbdea0",
  "kind": "theorem",
  "lexical_name": "inertiaDeg_smul",
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
  "slug": "inertiadeg-smul--a8be2b9094b485030c979866",
  "source": {
    "blob": "6e56e55e5856b0c4066adafa665289f739579029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 171,
    "path": "GRWTSK/Algebra/Inertia/Variant246375c7d71e6ee982690ccaa335c0f3dd5143ad0ae8d10f9918ce955b269603.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8be2b9094b485030c9798664f6a3f43ef78b7a30f4e3f092537b45f51624bd8",
  "verification": {
    "reference": "docs/verification/Algebra/Inertia/Variant246375c7d71e6ee982690ccaa335c0f3dd5143ad0ae8d10f9918ce955b269603.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc48d095-ebe9-bbe9-03a1-4d08c4fbdea0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertiaDeg_smul {G : Type*} [Group G] [MulSemiringAction G S] [SMulCommClass G R S]
    (g : G) : (g • q).inertiaDeg R = q.inertiaDeg R := by
  by_cases hq : q.IsPrime; swap
  · rw [inertiaDeg_of_not_isPrime, inertiaDeg_of_not_isPrime] <;> simpa
  · let p := q.under R
    let f₀ := MulSemiringAction.toAlgAut G R S g
    let := Localization.AtPrime.algebraOfLiesOver p q
    let := Localization.AtPrime.algebraOfLiesOver p (g • q)
    rw [inertiaDeg_eq p q, inertiaDeg_eq p (g • q)]
    let e₂ := Ideal.residueFieldAlgEquiv' p (g • q) q f₀.symm (comap_symm f₀.toRingEquiv).symm
    exact e₂.toLinearEquiv.finrank_eq

@[deprecated (since := "2026-07-03")] alias inertiaDeg'_smul := inertiaDeg_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inertia/Variant246375c7d71e6ee982690ccaa335c0f3dd5143ad0ae8d10f9918ce955b269603.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inertia/Variant246375c7d71e6ee982690ccaa335c0f3dd5143ad0ae8d10f9918ce955b269603.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e56e55e5856b0c4066adafa665289f739579029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
