# constantReferences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f13e0cbeb4f32944385322525d4baf7df5e95512782ec133f60e175d1a985f0b",
  "kind": "def",
  "lexical_name": "constantReferences",
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
  "slug": "constantreferences--bb748b5a0a770cdf50b12244",
  "source": {
    "blob": "775de7ab11c7c65551f7a3979e0c64faa89fae7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/ReferenceAndLabelPreservation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb748b5a0a770cdf50b1224424abf8c4bfab24a836905bd6329de4fd8ac6c4d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/ReferenceAndLabelPreservation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f13e0cbeb4f32944385322525d4baf7df5e95512782ec133f60e175d1a985f0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantReferences {K : KernelPresentation.{u}} {J : K.Judgment}
    (plan : TreePlan K J) : Finset K.ConstantName :=
  (Eval plan).constantReferences

/--
**Architectural problem:** Plans must distinguish root variables from binders.
**Important data and indices:** Classifications and names come from `K` at root `J`.
**Type-enforced invariant:** Accounting traverses only the exact indexed plan.
**Layer boundary:** This is presentation metadata, not free-variable inference.
**Worked example:** The private identity plan reports no root variable.
**Used by:** Root-boundary diagnostics and `rootVariables_comp`.
**Proof idea:** Evaluate and reuse raw root-variable accounting.
**Equality notion:** Results are exact finite sets.
**Boundary cases:** Local-only plans may return `∅`.
**Validation consequence:** Compilation cannot silently change classifications.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/ReferenceAndLabelPreservation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/ReferenceAndLabelPreservation.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `775de7ab11c7c65551f7a3979e0c64faa89fae7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
