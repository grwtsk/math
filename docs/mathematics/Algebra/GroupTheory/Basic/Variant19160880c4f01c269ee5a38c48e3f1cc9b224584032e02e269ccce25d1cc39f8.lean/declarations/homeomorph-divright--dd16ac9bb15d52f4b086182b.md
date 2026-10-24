# Homeomorph.divRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a9030836e18b98610c229b3411cee3825729b8b98c488245bb83a535ec39b8b",
  "kind": "def",
  "lexical_name": "Homeomorph.divRight",
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
  "slug": "homeomorph-divright--dd16ac9bb15d52f4b086182b",
  "source": {
    "blob": "c57a280e7f399390f3ff1a54e1c573e98a615ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1180,
    "line": 1173,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd16ac9bb15d52f4b086182b9166cf95aae068015990ac4a6863a3a017a64257",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a9030836e18b98610c229b3411cee3825729b8b98c488245bb83a535ec39b8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1173–1180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homeomorph.divRight (x : G) : G ≃ₜ G :=
  { Equiv.divRight x with
    continuous_toFun := continuous_id.div' continuous_const
    continuous_invFun := continuous_id.mul continuous_const }
#align homeomorph.div_right Homeomorph.divRight
#align homeomorph.sub_right Homeomorph.subRight

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean#L1173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57a280e7f399390f3ff1a54e1c573e98a615ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
