# stmtStRec.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a5181398cb4a799e6c587f61655aac108d88601b7cc3fc4979262da679c21d5",
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
  "slug": "stmtstrec--c5a7b22f33c3d40f6445f699",
  "source": {
    "blob": "30890dff70be24bc3f7b22ac2b7a36e25d3765ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2458,
    "line": 2446,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5a7b22f33c3d40f6445f699151d9c7ec0744afabd61b4da2ae83c89f3a2c780",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a5181398cb4a799e6c587f61655aac108d88601b7cc3fc4979262da679c21d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2446–2458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stmtStRec.{l} {C : Stmt₂ → Sort l} (H₁ : ∀ (k) (s : StAct₂ k) (q) (_ : C q), C (stRun s q))
    (H₂ : ∀ (a q) (_ : C q), C (TM2.Stmt.load a q))
    (H₃ : ∀ (p q₁ q₂) (_ : C q₁) (_ : C q₂), C (TM2.Stmt.branch p q₁ q₂))
    (H₄ : ∀ l, C (TM2.Stmt.goto l)) (H₅ : C TM2.Stmt.halt) : ∀ n, C n
  | TM2.Stmt.push _ f q => H₁ _ (push f) _ (stmtStRec H₁ H₂ H₃ H₄ H₅ q)
  | TM2.Stmt.peek _ f q => H₁ _ (peek f) _ (stmtStRec H₁ H₂ H₃ H₄ H₅ q)
  | TM2.Stmt.pop _ f q => H₁ _ (pop f) _ (stmtStRec H₁ H₂ H₃ H₄ H₅ q)
  | TM2.Stmt.load _ q => H₂ _ _ (stmtStRec H₁ H₂ H₃ H₄ H₅ q)
  | TM2.Stmt.branch _ q₁ q₂ => H₃ _ _ _ (stmtStRec H₁ H₂ H₃ H₄ H₅ q₁) (stmtStRec H₁ H₂ H₃ H₄ H₅ q₂)
  | TM2.Stmt.goto _ => H₄ _
  | TM2.Stmt.halt => H₅
#align turing.TM2to1.stmt_st_rec Turing.TM2to1.stmtStRec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean#L2446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30890dff70be24bc3f7b22ac2b7a36e25d3765ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
