# R_outside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b4a7a7e-e4f2-5fe6-dba7-8755c534ebc4",
  "kind": "theorem",
  "lexical_name": "R_outside",
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
  "slug": "r-outside--dd716d71428d121b56ecbdde",
  "source": {
    "blob": "007f986387af8e0f3571dc122ce618638e9122f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 385,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant59d1fb01a43ac84b967697a20e624967b6ca3ad6e99f4cce53939f2e4b180ccb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd716d71428d121b56ecbddeba77c241d5e20f64e77814f1d31dba16c64f2575",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant59d1fb01a43ac84b967697a20e624967b6ca3ad6e99f4cce53939f2e4b180ccb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b4a7a7e-e4f2-5fe6-dba7-8755c534ebc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem R_outside {Γ : List (Expr S)} {A : Expr S} (hA : Expected P Γ A)
    (e : Environment Ω Γ) (ho : Profile P Γ A ∉ C ∨ Ω.profile (A.subst e.images) ∉ C) :
    R Ω C A e = Top Ω (A.subst e.images).normalForm := by
  have hnf := normal_subst_eq Ω hw hA e
  rw [R,eval_outside Ω C,hnf]
  rcases ho with ho | ho
  · exact .inl (by rwa [Profile.normalForm])
  · exact .inr (by
      rw [←Ω.profile_normalForm (A.normalForm.subst e.images),hnf,Ω.profile_normalForm]
      exact ho)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant59d1fb01a43ac84b967697a20e624967b6ca3ad6e99f4cce53939f2e4b180ccb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant59d1fb01a43ac84b967697a20e624967b6ca3ad6e99f4cce53939f2e4b180ccb.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `007f986387af8e0f3571dc122ce618638e9122f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
