# constantsVarsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d495bdd0bdc978e5395917219376042a49c3ec295d6c799ad3e2a0456bfe07a",
  "kind": "def",
  "lexical_name": "constantsVarsEquiv",
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
  "slug": "constantsvarsequiv--6c236d831be2f32693d32a66",
  "source": {
    "blob": "3e5c29613d9fe3c4c1ec28a8c11432152cf673e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c236d831be2f32693d32a66f4e0aaecd41c6e91603080cf2ca67f27e2d1a3c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d495bdd0bdc978e5395917219376042a49c3ec295d6c799ad3e2a0456bfe07a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantsVarsEquiv : L[[γ]].Term α ≃ L.Term (Sum γ α) :=
  ⟨constantsToVars, varsToConstants, by
    intro t
    induction' t with _ n f _ ih
    · rfl
    · cases n
      · cases f
        · simp [constantsToVars, varsToConstants, ih]
        · simp [constantsToVars, varsToConstants, Constants.term]
      · cases' f with f f
        · simp [constantsToVars, varsToConstants, ih]
        · exact isEmptyElim f, by
    intro t
    induction' t with x n f _ ih
    · cases x <;> rfl
    · cases n <;> · simp [varsToConstants, constantsToVars, ih]⟩
#align first_order.language.term.constants_vars_equiv FirstOrder.Language.Term.constantsVarsEquiv

/-- A bijection between terms with constants and terms with extra variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantcb9fce668fad7f03049c01c2cdd4f4926295f06fa686a71af13fc968e04391b4.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e5c29613d9fe3c4c1ec28a8c11432152cf673e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
