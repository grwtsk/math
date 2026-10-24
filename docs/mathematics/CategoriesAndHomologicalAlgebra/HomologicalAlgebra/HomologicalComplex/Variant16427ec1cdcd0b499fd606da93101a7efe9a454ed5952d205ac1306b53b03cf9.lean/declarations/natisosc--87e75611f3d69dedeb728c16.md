# natIsoSc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5266c46f9a22f7175f3f866652a25c672c97d245ef3497b49f06c0b7696ff827",
  "kind": "def",
  "lexical_name": "natIsoSc'",
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
  "slug": "natisosc--87e75611f3d69dedeb728c16",
  "source": {
    "blob": "075c73870f6bc1fa30fb80965834c68ff46a24ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant16427ec1cdcd0b499fd606da93101a7efe9a454ed5952d205ac1306b53b03cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87e75611f3d69dedeb728c166a3a6c0cef3f3c171a5674fb64194da4c1357b7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant16427ec1cdcd0b499fd606da93101a7efe9a454ed5952d205ac1306b53b03cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5266c46f9a22f7175f3f866652a25c672c97d245ef3497b49f06c0b7696ff827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def natIsoSc' (i j k : ι) (hi : c.prev j = i) (hk : c.next j = k) :
    shortComplexFunctor C c j ≅ shortComplexFunctor' C c i j k :=
  NatIso.ofComponents (fun K => ShortComplex.isoMk (K.XIsoOfEq hi) (Iso.refl _) (K.XIsoOfEq hk)
    (by aesop_cat) (by aesop_cat)) (by aesop_cat)

variable {C c}
variable (K L M : HomologicalComplex C c) (φ : K ⟶ L) (ψ : L ⟶ M)

/-- The short complex `K.X i ⟶ K.X j ⟶ K.X k` for arbitrary indices `i`, `j` and `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant16427ec1cdcd0b499fd606da93101a7efe9a454ed5952d205ac1306b53b03cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant16427ec1cdcd0b499fd606da93101a7efe9a454ed5952d205ac1306b53b03cf9.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075c73870f6bc1fa30fb80965834c68ff46a24ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
