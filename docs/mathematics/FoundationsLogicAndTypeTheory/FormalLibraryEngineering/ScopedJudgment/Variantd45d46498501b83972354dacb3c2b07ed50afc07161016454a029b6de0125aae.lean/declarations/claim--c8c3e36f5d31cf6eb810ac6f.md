# Claim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9da3cc05df6a3ba9767dc89793cf51a545c07ad3b08873d2961d79653fd1f88a",
  "kind": "inductive",
  "lexical_name": "Claim",
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
  "slug": "claim--c8c3e36f5d31cf6eb810ac6f",
  "source": {
    "blob": "c50c7d3905135aacf6e70cdc69eb166feb80ce31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedJudgment/Variantd45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8c3e36f5d31cf6eb810ac6fc7095641cb68cc0cfe4e61521aae6044e595f7e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedJudgment/Variantd45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9da3cc05df6a3ba9767dc89793cf51a545c07ad3b08873d2961d79653fd1f88a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Claim (Expr : Type w)
  | isType (type : Expr)
  | hasType (term type : Expr)
  deriving DecidableEq

/--
**Architectural problem:** The same printed term may refer to different binders
in different telescopes, so its represented judgment must retain its scope.

**Important data and indices:** `universeContext` records universe parameters,
`localContext` records the ordered telescope, and `claim` records type formation
or term typing.

**Type-enforced invariant:** A `RawDer` or `TreePlan` indexed by this value can
only contain children whose exact premise judgments are named by its rule.

**Equality notion:** Equality is ordinary Lean propositional equality of this
abstract record.  Any alpha-canonicalization or Lean definitional equality is a
responsibility of the concrete adapter, not an implicit quotient here.

**Layer boundary:** The record is presentation data and does not certify a
concrete Lean local context or expression encoding.

**Worked example:** The private identity fixture stores its binder-extended
body and root conclusion as distinct values.

**Used by:** `KernelPresentation.Judgment`, `RawDer`, and `TreePlan` indices.

**Proof idea:** A single structure value retains all scope components together.

**Boundary cases:** An empty local context is valid and remains distinct from
the universe context.

**Validation consequence:** Equality of records validates exact abstract data
only, not frontend provenance or definitional equality.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedJudgment/Variantd45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedJudgment/Variantd45d46498501b83972354dacb3c2b07ed50afc07161016454a029b6de0125aae.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c50c7d3905135aacf6e70cdc69eb166feb80ce31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
