# coveringOfPresieve_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c5ca78e-599a-2cc9-9807-11c2b26d13f7",
  "kind": "theorem",
  "lexical_name": "coveringOfPresieve_apply",
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
  "slug": "coveringofpresieve-apply--2add5780769fc10268ca36e1",
  "source": {
    "blob": "381b75fb3d7b3b597c902e14a0d4f0a05a6dbec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2add5780769fc10268ca36e12bb02642116a9b4b556b72b9b0b3b767eb8e6bef",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c5ca78e-599a-2cc9-9807-11c2b26d13f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coveringOfPresieve_apply (U : Opens X) (R : Presieve U) (f : ΣV, { f : V ⟶ U // R f }) :
    coveringOfPresieve U R f = f.1 := rfl
#align Top.presheaf.covering_of_presieve_apply TopCat.Presheaf.coveringOfPresieve_apply

namespace coveringOfPresieve

variable (U : Opens X) (R : Presieve U)

/-- If `R` is a presieve in the grothendieck topology on `Opens X`, the covering family associated
to `R` really is _covering_, i.e. the union of all open sets equals `U`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sites/Variant931b942b884f8fc17856653e269bfb95c47c24d0ead56dd662b4c9c7c6d8c684.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381b75fb3d7b3b597c902e14a0d4f0a05a6dbec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
