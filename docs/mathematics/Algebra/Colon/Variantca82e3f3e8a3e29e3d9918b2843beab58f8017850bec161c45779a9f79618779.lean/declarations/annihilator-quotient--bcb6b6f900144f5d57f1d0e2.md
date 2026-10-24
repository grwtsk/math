# annihilator_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ce66c2e-2eda-0124-83e4-2b9749de993d",
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
  "slug": "annihilator-quotient--bcb6b6f900144f5d57f1d0e2",
  "source": {
    "blob": "4e06e6e61063ef55440f803f91d012ae207e9e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 174,
    "path": "GRWTSK/Algebra/Colon/Variantca82e3f3e8a3e29e3d9918b2843beab58f8017850bec161c45779a9f79618779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcb6b6f900144f5d57f1d0e225a9ba68a05264d1ed97dca33ca9357670d6525e",
  "verification": {
    "reference": "docs/verification/Algebra/Colon/Variantca82e3f3e8a3e29e3d9918b2843beab58f8017850bec161c45779a9f79618779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ce66c2e-2eda-0124-83e4-2b9749de993d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem annihilator_quotient : Module.annihilator R (M ⧸ N) = N.colon Set.univ := by
  ext r
  have htop : (⊤ : Submodule R (M ⧸ N)) = (⊤ : Submodule R M).map N.mkQ := by
    simpa [map_top] using (LinearMap.range_eq_top.mpr (mkQ_surjective N)).symm
  rw [← annihilator_top (R := R) (M := M ⧸ N), htop,
    annihilator_map_mkQ_eq_colon (N := N) (P := ⊤), Submodule.top_coe]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Colon/Variantca82e3f3e8a3e29e3d9918b2843beab58f8017850bec161c45779a9f79618779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Colon/Variantca82e3f3e8a3e29e3d9918b2843beab58f8017850bec161c45779a9f79618779.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e06e6e61063ef55440f803f91d012ae207e9e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
