# exists_associated_pow_of_associated_pow_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b84bc0d6-9ec5-a69d-07dd-743318c4ed80",
  "kind": "theorem",
  "lexical_name": "exists_associated_pow_of_associated_pow_mul",
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
  "slug": "exists-associated-pow-of-associated-pow-mul--debe319088b1d3b888ead4d6",
  "source": {
    "blob": "d6de315c92879d8c2503b6bc99e92b1e564a7b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 468,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:debe319088b1d3b888ead4d6d8015d10432ce05575e2eece95d83d2e1efc1f2f",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b84bc0d6-9ec5-a69d-07dd-743318c4ed80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_associated_pow_of_associated_pow_mul {a b c : R} (hab : IsCoprime a b) {k : ℕ}
    (h : Associated (c ^ k) (a * b)) : ∃ d : R, Associated (d ^ k) a := by
  obtain ⟨u, hu⟩ := h.symm
  exact exists_associated_pow_of_mul_eq_pow'
    ((isCoprime_mul_unit_right_right u.isUnit a b).mpr hab) <| mul_assoc a _ _ ▸ hu

end Bezout

variable [IsDomain R] [IsPrincipalIdealRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6de315c92879d8c2503b6bc99e92b1e564a7b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
