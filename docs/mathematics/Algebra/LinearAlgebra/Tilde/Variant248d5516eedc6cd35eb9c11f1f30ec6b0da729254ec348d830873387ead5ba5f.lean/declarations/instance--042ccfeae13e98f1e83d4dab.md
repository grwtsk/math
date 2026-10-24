# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29f4c9d23d13e15fbd0975f42c1345c20f9ac190d15363043dc500c57dd5767b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--042ccfeae13e98f1e83d4dab",
  "source": {
    "blob": "44a65da3bac6ece773f3afe802846643ecbf2a9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 410,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:042ccfeae13e98f1e83d4dabd8a1c07a520ce01a27610cec5171f573691f941c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29f4c9d23d13e15fbd0975f42c1345c20f9ac190d15363043dc500c57dd5767b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (x : PrimeSpectrum.Top R) :
    IsLocalizedModule x.asIdeal.primeCompl (toStalk M x).hom := by
  convert IsLocalizedModule.of_linearEquiv
    (hf := localizedModuleIsLocalizedModule (M := M) x.asIdeal.primeCompl)
    (e := (stalkIso M x).symm.toLinearEquiv)
  ext
  simp only [of_coe,
    show (stalkIso M x).symm.toLinearEquiv.toLinearMap = (stalkIso M x).inv.hom by rfl]
  erw [LocalizedModule.lift_comp]

end Tilde

end ModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a65da3bac6ece773f3afe802846643ecbf2a9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
