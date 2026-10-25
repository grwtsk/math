# root_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27bbb824-ce12-4136-2771-fc643846422c",
  "kind": "theorem",
  "lexical_name": "root_comp",
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
  "slug": "root-comp--9cfbe3228dc788fcb03b045f",
  "source": {
    "blob": "afc63a9822a1feb9125fe2fa6d1def2aef22894f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/StructuralRecoveryAndTreeMetrics.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cfbe3228dc788fcb03b045fb1144a8f51539d41f34458e6a6715ccb7aa5021b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/StructuralRecoveryAndTreeMetrics.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27bbb824-ce12-4136-2771-fc643846422c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem root_comp
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (derivation : RawDer K J) :
    (Comp derivation).root = derivation.root := rfl

mutual
  /--
  **Used by:** Cost and diagnostic code may compare structural node counts
  without treating compilation as compression.

  **Proof idea:** Induct over the derivation and sum the child induction
  hypotheses.

  **Boundary cases:** A leaf has size one on both sides.

  **Architectural problem:** Structural compilation must not masquerade as
  compression by dropping rule nodes.
  **Important data and indices:** The compared objects share `K` and `J`.
  **Type-enforced invariant:** All indexed children participate in both counts.
  **Layer boundary:** This is tree size, not later DAG-node count.
  **Worked example:** The two-node identity derivation compiles to size two.
  **Equality notion:** The conclusion is natural-number equality.
  **Validation consequence:** M1a compilation preserves exact node activity.
  -/
  @[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/StructuralRecoveryAndTreeMetrics.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant0d107628ffc4749d/StructuralRecoveryAndTreeMetrics.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc63a9822a1feb9125fe2fa6d1def2aef22894f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
