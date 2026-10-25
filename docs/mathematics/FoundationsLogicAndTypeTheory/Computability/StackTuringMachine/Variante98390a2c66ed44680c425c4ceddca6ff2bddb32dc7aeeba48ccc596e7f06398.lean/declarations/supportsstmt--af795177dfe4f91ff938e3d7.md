# SupportsStmt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41f0d1a4dc7581fc1f0c41bcaa32586370fd3bf0aa1f267f2e477022dca4404b",
  "kind": "def",
  "lexical_name": "SupportsStmt",
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
  "slug": "supportsstmt--af795177dfe4f91ff938e3d7",
  "source": {
    "blob": "f4ba02815758cfb9698061c15a805920126e3787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af795177dfe4f91ff938e3d7a1557f7d38d7cf5938191d498c402fa8ad445fe4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41f0d1a4dc7581fc1f0c41bcaa32586370fd3bf0aa1f267f2e477022dca4404b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SupportsStmt (S : Finset Λ) : Stmt Γ Λ σ → Prop
  | push _ _ q => SupportsStmt S q
  | peek _ _ q => SupportsStmt S q
  | pop _ _ q => SupportsStmt S q
  | load _ q => SupportsStmt S q
  | branch _ q₁ q₂ => SupportsStmt S q₁ ∧ SupportsStmt S q₂
  | goto l => ∀ v, l v ∈ S
  | halt => True

section

open scoped Classical in
/-- The set of subtree statements in a statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ba02815758cfb9698061c15a805920126e3787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
