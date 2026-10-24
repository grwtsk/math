# prototypeAssumptionId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f84b46b22c0f9a4188b35b0f530b46827dd53453cb2e9148b4b830805f86bc6",
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
  "slug": "prototypeassumptionid--aa3dd36cce4106ee83a8c351",
  "source": {
    "blob": "34a089e104f5f813b46ec6cc696eab67fb998b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Varianta987e0d70aad1d9f23ed7e6612538b516c3af0df969ffcfb61e106dcd0eadf9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa3dd36cce4106ee83a8c351c6d9ec47120bab5d134206de9c8a59dd8c529286",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Models/Varianta987e0d70aad1d9f23ed7e6612538b516c3af0df969ffcfb61e106dcd0eadf9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f84b46b22c0f9a4188b35b0f530b46827dd53453cb2e9148b4b830805f86bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–185.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Models/Varianta987e0d70aad1d9f23ed7e6612538b516c3af0df969ffcfb61e106dcd0eadf9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Varianta987e0d70aad1d9f23ed7e6612538b516c3af0df969ffcfb61e106dcd0eadf9a.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a089e104f5f813b46ec6cc696eab67fb998b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
