# localizedModuleFunctor_map_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0b6af39-048e-6ef1-84a2-6df353148dba",
  "kind": "lemma",
  "lexical_name": "localizedModuleFunctor_map_exact",
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
  "slug": "localizedmodulefunctor-map-exact--8af6f1ecfd5c46443de30f85",
  "source": {
    "blob": "079e456223d199bf7a84af994938864ef754e5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant62fc0194900675c3d412576548d96cc8cc5b496ae60fe3f048c1ad4722e269e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8af6f1ecfd5c46443de30f859ab6bf6b634a3973783ba9ceced7bab1ff9b0417",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variant62fc0194900675c3d412576548d96cc8cc5b496ae60fe3f048c1ad4722e269e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b6af39-048e-6ef1-84a2-6df353148dba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma localizedModuleFunctor_map_exact [Small.{v} R] (S : Submonoid R)
    (T : ShortComplex (ModuleCat.{v} R)) (h : T.Exact) :
    (T.map (ModuleCat.localizedModuleFunctor S)).Exact := by
  rw [CategoryTheory.ShortComplex.ShortExact.moduleCat_exact_iff_function_exact] at h ⊢
  exact IsLocalizedModule.map_exact S (T.X₁.localizedModuleMkLinearMap S)
    (T.X₂.localizedModuleMkLinearMap S) (T.X₃.localizedModuleMkLinearMap S) _ _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variant62fc0194900675c3d412576548d96cc8cc5b496ae60fe3f048c1ad4722e269e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variant62fc0194900675c3d412576548d96cc8cc5b496ae60fe3f048c1ad4722e269e0.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `079e456223d199bf7a84af994938864ef754e5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
