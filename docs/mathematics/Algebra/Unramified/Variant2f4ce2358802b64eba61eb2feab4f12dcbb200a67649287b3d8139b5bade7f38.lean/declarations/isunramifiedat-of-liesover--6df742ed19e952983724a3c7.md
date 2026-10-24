# IsUnramifiedAt.of_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77b7cd63-a112-7eda-84c9-bd23ad8a0e73",
  "kind": "lemma",
  "lexical_name": "IsUnramifiedAt.of_liesOver",
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
  "slug": "isunramifiedat-of-liesover--6df742ed19e952983724a3c7",
  "source": {
    "blob": "8b003f3884485b10a57f3939c6a1ea0f2730251c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6df742ed19e952983724a3c76e67140dccd3e5b3c1f8727acd9f8ea84a3c7505",
  "verification": {
    "reference": "docs/verification/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77b7cd63-a112-7eda-84c9-bd23ad8a0e73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUnramifiedAt.of_liesOver
    (p : Ideal S) (P : Ideal T) [P.LiesOver p] [p.IsPrime] [P.IsPrime]
    [IsUnramifiedAt R P] [EssFiniteType R S] [EssFiniteType R T]
    [IsDedekindDomain S] [IsDomain T] [Module.IsTorsionFree S T] : IsUnramifiedAt R p :=
  IsUnramifiedAt.of_liesOver_of_ne_bot R p P P.primeCompl_le_nonZeroDivisors
    (Ideal.ne_bot_of_liesOver_of_ne_bot · P)


/-- Let `R` be a domain of characteristic 0, finite rank over `ℤ`, `S` be a Dedekind domain
that is a finite `R`-algebra. Let `p` be a prime of `S`, then `p` is unramified iff `e(p) = 1`. -/
@[deprecated "Use `Ideal.ramificationIdx'_eq_one_iff` instead." (since := "2026-06-30")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b003f3884485b10a57f3939c6a1ea0f2730251c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
