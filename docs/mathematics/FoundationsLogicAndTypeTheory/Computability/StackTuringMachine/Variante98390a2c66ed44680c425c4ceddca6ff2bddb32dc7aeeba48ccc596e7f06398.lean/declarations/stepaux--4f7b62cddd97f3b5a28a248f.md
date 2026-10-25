# stepAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78dc6f965bb4fd385015c005ad70193bd6f0d3ecc1911cc6fd2033c9718d97f0",
  "kind": "def",
  "lexical_name": "stepAux",
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
  "slug": "stepaux--4f7b62cddd97f3b5a28a248f",
  "source": {
    "blob": "f4ba02815758cfb9698061c15a805920126e3787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f7b62cddd97f3b5a28a248fc81585623749bc316f1f9103bacdf62db4a69a96",
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

Occurrence: `declaration:78dc6f965bb4fd385015c005ad70193bd6f0d3ecc1911cc6fd2033c9718d97f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stepAux : Stmt Γ Λ σ → σ → (∀ k, List (Γ k)) → Cfg Γ Λ σ
  | push k f q, v, S => stepAux q v (update S k (f v :: S k))
  | peek k f q, v, S => stepAux q (f v (S k).head?) S
  | pop k f q, v, S => stepAux q (f v (S k).head?) (update S k (S k).tail)
  | load a q, v, S => stepAux q (a v) S
  | branch f q₁ q₂, v, S => cond (f v) (stepAux q₁ v S) (stepAux q₂ v S)
  | goto f, v, S => ⟨some (f v), v, S⟩
  | halt, v, S => ⟨none, v, S⟩

/-- The step function for the TM2 model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ba02815758cfb9698061c15a805920126e3787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
