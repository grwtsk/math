# annihilator_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c171f54-3b12-a989-c39b-aca4182a76f4",
  "kind": "theorem",
  "lexical_name": "annihilator_quotient",
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
  "slug": "annihilator-quotient--96d71d4586c4cf387cfff070",
  "source": {
    "blob": "157dcdefd86227e61c3487e7ae6d8b4c0deda48e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 119,
    "path": "GRWTSK/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96d71d4586c4cf387cfff07085f46701cfb7389ec47ff52ba73c4b9beb5427c3",
  "verification": {
    "reference": "docs/verification/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c171f54-3b12-a989-c39b-aca4182a76f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem annihilator_quotient {N : Submodule R M} :
    Module.annihilator R (M ⧸ N) = N.colon ⊤ := by
  simp_rw [SetLike.ext_iff, Module.mem_annihilator, ← annihilator_map_mkQ_eq_colon, mem_annihilator,
    map_top, LinearMap.range_eq_top.mpr (mkQ_surjective N), mem_top, forall_true_left,
    forall_const]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Colon/Variant1ed49b26a6b381c4ea2796f9073c344c934d7a81c1bedfe3e5e3d52caa96b838.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `157dcdefd86227e61c3487e7ae6d8b4c0deda48e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
