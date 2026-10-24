# isMaximal_comap_C_of_isJacobsonRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efc557a2-4d5e-d2f8-9803-de179ef99964",
  "kind": "theorem",
  "lexical_name": "isMaximal_comap_C_of_isJacobsonRing",
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
  "slug": "ismaximal-comap-c-of-isjacobsonring--0e73c29c22e0e8e7b7f43b8b",
  "source": {
    "blob": "7fb35473abe6e0a02c75127a03e061e8940348e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 548,
    "path": "GRWTSK/Algebra/Ring/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e73c29c22e0e8e7b7f43b8b61b36732f10134050d5266cfd145d25259f8eaad",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efc557a2-4d5e-d2f8-9803-de179ef99964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMaximal_comap_C_of_isJacobsonRing : (P.comap (C : R →+* R[X])).IsMaximal := by
  rw [← @mk_ker _ _ P, RingHom.ker_eq_comap_bot, comap_comap]
  have := (bot_quotient_isMaximal_iff _).mpr hP
  exact isMaximal_comap_of_isIntegral_of_isMaximal _
    (quotient_mk_comp_C_isIntegral_of_isJacobsonRing P) ⊥

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantcb068ac2b8d6e03921db064ee4c7aa420598e116122a7fcc00c3ca17fc610c83.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fb35473abe6e0a02c75127a03e061e8940348e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
