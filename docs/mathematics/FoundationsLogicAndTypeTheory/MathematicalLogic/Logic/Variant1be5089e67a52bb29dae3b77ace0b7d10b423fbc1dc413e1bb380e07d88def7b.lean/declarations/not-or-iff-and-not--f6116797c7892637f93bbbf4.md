# not_or_iff_and_not

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3206aaf0-1008-f9af-ebf8-1e6d04b810fa",
  "kind": "theorem",
  "lexical_name": "not_or_iff_and_not",
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
  "slug": "not-or-iff-and-not--f6116797c7892637f93bbbf4",
  "source": {
    "blob": "64d685ebc939acc1947b1735460f92033e858d10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 304,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant1be5089e67a52bb29dae3b77ace0b7d10b423fbc1dc413e1bb380e07d88def7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6116797c7892637f93bbbf414575292e29086b1e64dc421cb6de4e86499ddc8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant1be5089e67a52bb29dae3b77ace0b7d10b423fbc1dc413e1bb380e07d88def7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3206aaf0-1008-f9af-ebf8-1e6d04b810fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[deprecated not_or] theorem not_or_iff_and_not (p q) [Decidable p] [Decidable q] :
    ¬(p ∨ q) ↔ ¬p ∧ ¬q := not_or

end Decidable

#align decidable_of_decidable_of_iff decidable_of_decidable_of_iff
#align decidable_of_decidable_of_eq decidable_of_decidable_of_eq
#align or.by_cases Or.by_cases

alias Or.decidable := instDecidableOr
alias And.decidable := instDecidableAnd
alias Not.decidable := instDecidableNot
alias Iff.decidable := instDecidableIff
alias decidableTrue := instDecidableTrue
alias decidableFalse := instDecidableFalse

#align decidable.true decidableTrue
#align decidable.false decidableFalse
#align or.decidable Or.decidable
#align and.decidable And.decidable
#align not.decidable Not.decidable
#align iff.decidable Iff.decidable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant1be5089e67a52bb29dae3b77ace0b7d10b423fbc1dc413e1bb380e07d88def7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variant1be5089e67a52bb29dae3b77ace0b7d10b423fbc1dc413e1bb380e07d88def7b.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64d685ebc939acc1947b1735460f92033e858d10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
