# CompB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61357696882d54438c75bfb7fb3b3b5a42d3b4e0811a3b3c70ce8c8687c1b2ee",
  "kind": "def",
  "lexical_name": "CompB",
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
  "slug": "compb--64f0b8de0b8d6eb53bf0e61a",
  "source": {
    "blob": "3225ed5d4cfdccdd77631594d738afd37a912d87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant1174a40635dc2e6f/ConditionalBoundaryRecovery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64f0b8de0b8d6eb53bf0e61a332819ba32b6571e1736d7a74a364f8bf4d28cca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant1174a40635dc2e6f/ConditionalBoundaryRecovery.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61357696882d54438c75bfb7fb3b3b5a42d3b4e0811a3b3c70ce8c8687c1b2ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CompB
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (boundary : Finset K.ConstantName)
    (derivation : RawDer K J)
    (closed : BClosed boundary derivation) :
    BTreePlan K boundary J := by
  refine ⟨Comp derivation, ?_⟩
  simpa [BClosed] using closed

/--
**Worked example:** Evaluating the private `restrictedPlan` fixture from
`Examples.lean` returns the original internal-constant derivation.

**Equality notion:** Propositional equality of represented derivation syntax.

**Boundary cases:** The proof still relies on the supplied `closed` witness; it
does not certify how the boundary was selected.

**Architectural problem:** Boundary restriction must preserve the same recovery
guarantee as unrestricted compilation.
**Important data and indices:** Both sides share `K`, `J`, boundary, derivation,
and the explicit closure witness.
**Type-enforced invariant:** `CompB` stores a `TreePlan K J` made by `Comp`.
**Layer boundary:** Recovery is abstract syntax equality, not concrete replay.
**Used by:** The M1a axiom audit and downstream restricted-plan consumers.
**Proof idea:** Apply unrestricted `eval_comp` to the subtype's plan projection.
**Validation consequence:** The theorem proves conditional structural recovery
only and grants no authority to boundary selection or external evidence.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant1174a40635dc2e6f/ConditionalBoundaryRecovery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/ScopeIndexedStructuralReification/Variant1174a40635dc2e6f/ConditionalBoundaryRecovery.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3225ed5d4cfdccdd77631594d738afd37a912d87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
