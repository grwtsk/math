# singletonOneHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44c0b807f18add52b20a7016068fe570023807af8d22018b01c7fafa0f1300fc",
  "kind": "def",
  "lexical_name": "singletonOneHom",
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
  "slug": "singletononehom--8b3d02e81be78e64802fc125",
  "source": {
    "blob": "3070c4fa56b62827aaca2efb156bd01c1465e143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 141,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0e307376d34b48c19c1b970bfcb9f23ebde0c27500d52583148533856718ed52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b3d02e81be78e64802fc125cff8f85b3950ff59a612a65b674f601011985a05",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant0e307376d34b48c19c1b970bfcb9f23ebde0c27500d52583148533856718ed52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44c0b807f18add52b20a7016068fe570023807af8d22018b01c7fafa0f1300fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def singletonOneHom : OneHom α (Set α) :=
  ⟨singleton, singleton_one⟩
#align set.singleton_one_hom Set.singletonOneHom
#align set.singleton_zero_hom Set.singletonZeroHom

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant0e307376d34b48c19c1b970bfcb9f23ebde0c27500d52583148533856718ed52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant0e307376d34b48c19c1b970bfcb9f23ebde0c27500d52583148533856718ed52.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3070c4fa56b62827aaca2efb156bd01c1465e143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
