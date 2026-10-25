# stmtStRec.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c74e743b0558af85deea0b514f1877db73c764ae9a5ce3733e9b46fe5dafb11",
  "kind": "def",
  "lexical_name": "stmtStRec.",
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
  "slug": "stmtstrec--69bdf1c33f34b2ecfd30d96d",
  "source": {
    "blob": "f4ba02815758cfb9698061c15a805920126e3787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 441,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69bdf1c33f34b2ecfd30d96d6b899dd53b8366160df840524e0d1896b02e34a5",
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

Occurrence: `declaration:9c74e743b0558af85deea0b514f1877db73c764ae9a5ce3733e9b46fe5dafb11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stmtStRec.{l} {motive : TM2.Stmt Γ Λ σ → Sort l}
    (run : ∀ (k) (s : StAct K Γ σ k) (q) (_ : motive q), motive (stRun s q))
    (load : ∀ (a q) (_ : motive q), motive (TM2.Stmt.load a q))
    (branch : ∀ (p q₁ q₂) (_ : motive q₁) (_ : motive q₂), motive (TM2.Stmt.branch p q₁ q₂))
    (goto : ∀ l, motive (TM2.Stmt.goto l)) (halt : motive TM2.Stmt.halt) : ∀ n, motive n
  | TM2.Stmt.push _ f q => run _ (push f) _ (stmtStRec run load branch goto halt q)
  | TM2.Stmt.peek _ f q => run _ (peek f) _ (stmtStRec run load branch goto halt q)
  | TM2.Stmt.pop _ f q => run _ (pop f) _ (stmtStRec run load branch goto halt q)
  | TM2.Stmt.load _ q => load _ _ (stmtStRec run load branch goto halt q)
  | TM2.Stmt.branch _ q₁ q₂ =>
    branch _ _ _ (stmtStRec run load branch goto halt q₁) (stmtStRec run load branch goto halt q₂)
  | TM2.Stmt.goto _ => goto _
  | TM2.Stmt.halt => halt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ba02815758cfb9698061c15a805920126e3787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
