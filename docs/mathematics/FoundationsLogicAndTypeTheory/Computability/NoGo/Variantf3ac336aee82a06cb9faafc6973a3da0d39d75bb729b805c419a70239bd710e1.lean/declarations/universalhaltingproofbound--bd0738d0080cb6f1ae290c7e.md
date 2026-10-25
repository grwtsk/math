# UniversalHaltingProofBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:924199518fd1de72a08a2555db4444ef64ab56582744b9639bdaff03bb6de58a",
  "kind": "def",
  "lexical_name": "UniversalHaltingProofBound",
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
  "slug": "universalhaltingproofbound--bd0738d0080cb6f1ae290c7e",
  "source": {
    "blob": "834f4aaa9b4afb610a236245918c3fdb87fe7082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd0738d0080cb6f1ae290c7e9dc62a3da778a424fbc1554d7c3306d372bec7e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:924199518fd1de72a08a2555db4444ef64ab56582744b9639bdaff03bb6de58a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UniversalHaltingProofBound {input : ℕ}
    (system : EffectiveHaltingProofCost input) (bound : ℕ → ℕ) : Prop :=
  ∀ program, ProgramHalts input program →
    ∃ certificate, system.proofCost certificate ≤ bound (system.descriptionSize program) ∧
      system.accepts (program, certificate) = true

/-- Effective proof balls preclude a computable universal upper bound on shortest halting proofs.
The search-ball completeness hypothesis is essential: no missing certificate is
silently interpreted as nonhalting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/NoGo/Variantf3ac336aee82a06cb9faafc6973a3da0d39d75bb729b805c419a70239bd710e1.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834f4aaa9b4afb610a236245918c3fdb87fe7082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
