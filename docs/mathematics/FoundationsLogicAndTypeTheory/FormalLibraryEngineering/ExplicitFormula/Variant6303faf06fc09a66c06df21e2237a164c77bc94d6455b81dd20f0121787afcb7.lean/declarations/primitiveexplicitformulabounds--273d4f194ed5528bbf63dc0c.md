# PrimitiveExplicitFormulaBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1b47770f4036a62300e854dd1b9088615e9d92d1de854ce996be18a7db18f59",
  "kind": "def",
  "lexical_name": "PrimitiveExplicitFormulaBounds",
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
  "slug": "primitiveexplicitformulabounds--273d4f194ed5528bbf63dc0c",
  "source": {
    "blob": "047594e3603cf1174ada670b1eb8ab9a1136e9e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:273d4f194ed5528bbf63dc0ca9ef1f4112f4092cd5ba3eec51b003b5f0a01460",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1b47770f4036a62300e854dd1b9088615e9d92d1de854ce996be18a7db18f59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PrimitiveExplicitFormulaBounds
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveExplicitFormulaSquare χ) : Prop :=
  (GRHForPrimitiveCharacter χ →
      IsCenteredCriticalRateBound q square.zeroContribution) ∧
    IsCenteredCriticalRateBound q square.gammaContribution ∧
    IsCenteredCriticalRateBound q square.trivialZeroContribution ∧
    IsCenteredCriticalRateBound q square.contourError ∧
    IsCenteredCriticalRateBound q square.desmoothingError

/-- The exact formula plus its five separately visible estimates derives the
sharp centered twisted-Chebyshev bound. -/

@[surface_novel, surface_interface]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant6303faf06fc09a66c06df21e2237a164c77bc94d6455b81dd20f0121787afcb7.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047594e3603cf1174ada670b1eb8ab9a1136e9e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
