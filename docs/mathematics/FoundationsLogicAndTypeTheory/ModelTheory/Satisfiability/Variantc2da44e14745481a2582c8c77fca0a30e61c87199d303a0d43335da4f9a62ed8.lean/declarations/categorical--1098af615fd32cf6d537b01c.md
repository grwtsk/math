# Categorical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96c1caa389d6b7167058b7b71772f5bbdcfce24c6571ab5b1d7a364598d5c205",
  "kind": "def",
  "lexical_name": "Categorical",
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
  "slug": "categorical--1098af615fd32cf6d537b01c",
  "source": {
    "blob": "c67c6fc11af57b4996931de4cddb6f77970b4901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 666,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1098af615fd32cf6d537b01c3ef9d3247274504552eb1a5413db10caca3dca5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96c1caa389d6b7167058b7b71772f5bbdcfce24c6571ab5b1d7a364598d5c205`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Categorical : Prop :=
  ∀ M N : T.ModelType, #M = κ → #N = κ → Nonempty (M ≃[L] N)
#align cardinal.categorical Cardinal.Categorical

/-- The Łoś–Vaught Test : a criterion for categorical theories to be complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c67c6fc11af57b4996931de4cddb6f77970b4901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
