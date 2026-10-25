# obtainNone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cbe4ad73cf8082ca8b6af9dc25135ee5ff6926737e0b0733188321417035d8b",
  "kind": "def",
  "lexical_name": "obtainNone",
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
  "slug": "obtainnone--1e721bfc87a0e4042e799cd5",
  "source": {
    "blob": "24a785c26363ffb931067ba03644dde0794c800f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 553,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant759b9420a7a28620d038c29c328ade2ff0b61c026bc568d978d59916aab78566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e721bfc87a0e4042e799cd5a400e2bb3146fea1aa1622e1a4cb9d716246b63c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant759b9420a7a28620d038c29c328ade2ff0b61c026bc568d978d59916aab78566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cbe4ad73cf8082ca8b6af9dc25135ee5ff6926737e0b0733188321417035d8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–563.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def obtainNone (pat : RCasesPatt) (ty : Syntax) (g : MVarId) : TermElabM (List MVarId) := do
  let ty ← Term.elabType ty
  let g₁ ← mkFreshExprMVar (some ty)
  let (v, g₂) ← (← g.assert (pat.name?.getD default) ty g₁).intro1
  let gs ← rcasesCore g₂ {} #[] (.fvar v) #[] pat finish
  pure (g₁.mvarId! :: gs.toList)

mutual
variable [Monad m] [MonadQuotation m]

/-- Expand a `rintroPat` into an equivalent list of `rcasesPat` patterns. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant759b9420a7a28620d038c29c328ade2ff0b61c026bc568d978d59916aab78566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant759b9420a7a28620d038c29c328ade2ff0b61c026bc568d978d59916aab78566.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24a785c26363ffb931067ba03644dde0794c800f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
