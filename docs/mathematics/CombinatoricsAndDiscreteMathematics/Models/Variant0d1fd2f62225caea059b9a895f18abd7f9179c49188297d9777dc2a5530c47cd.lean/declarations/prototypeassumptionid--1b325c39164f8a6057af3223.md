# prototypeAssumptionId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bf606898a65697664a431eedf0499499a7d5643b175df3164bb9acc744dc116",
  "kind": "def",
  "lexical_name": "prototypeAssumptionId",
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
  "slug": "prototypeassumptionid--1b325c39164f8a6057af3223",
  "source": {
    "blob": "efce17b49b1a2081c7889b243727dbcf916fc516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 169,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b325c39164f8a6057af3223f3997ed66e2957979c818d3142287e586d603dc3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bf606898a65697664a431eedf0499499a7d5643b175df3164bb9acc744dc116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeAssumptionId (model : PrototypeModel) : AssumptionId :=
  ⟨"assumption:" ++ (prototypeModelId model).value ++ ":finite-scope"⟩

/--
Trusted-base metadata for the pinned Lean route used by a wrapper.  The source
tree is Lean-checked, but these semantic wrapper records are not yet populated
from the compiled-environment export.  Consequently the observed closure is
empty and, critically, `closureComplete` remains false.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant0d1fd2f62225caea059b9a895f18abd7f9179c49188297d9777dc2a5530c47cd.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efce17b49b1a2081c7889b243727dbcf916fc516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
