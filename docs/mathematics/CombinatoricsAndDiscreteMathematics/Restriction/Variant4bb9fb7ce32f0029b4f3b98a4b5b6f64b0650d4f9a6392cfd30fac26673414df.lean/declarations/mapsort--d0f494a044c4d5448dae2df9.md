# mapSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c782c609-d54f-a4ad-f178-0ceef448c095",
  "kind": "theorem",
  "lexical_name": "mapSort",
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
  "slug": "mapsort--d0f494a044c4d5448dae2df9",
  "source": {
    "blob": "67736b7ab8138b5e3e8e88e98c724a3266f47a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0f494a044c4d5448dae2df9b7ea57fa01df0ee814d6fbf723bc2f1979a22e09",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c782c609-d54f-a4ad-f178-0ceef448c095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapSort (h : Beta M N) (f : S → T) : Beta (M.mapSort f) (N.mapSort f) := by
  induction h with
  | head A b a =>
      simpa only [Expr.mapSort, Expr.mapSort_instantiate] using
        (Beta.head (A.mapSort f) (b.mapSort f) (a.mapSort f))
  | app_left _ ih => exact .app_left ih
  | app_right _ ih => exact .app_right ih
  | lam_domain _ ih => exact .lam_domain ih
  | lam_body _ ih => exact .lam_body ih
  | pi_domain _ ih => exact .pi_domain ih
  | pi_body _ ih => exact .pi_body ih

end Beta

namespace Reduces

variable {S T : Type u} {M N : Expr S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67736b7ab8138b5e3e8e88e98c724a3266f47a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
