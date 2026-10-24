# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MatrixEncoding.Variant583a15d10707c38fae1794ad9f020d4a5d34f360917d89a3b968598c3ea358a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6b546da5064e41699caa5b46028fcbce3b58384` · SHA-256 `e08af92e39df95dcf0429532ebab662a6d2e2e8e3d86dd8ea9c1c412369b4338`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormulaTreeCellVariableTree.Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FormulaTreeCellVariableTree.Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266","mathematical_subject":"Computation.DataStructures","original_sha256":"78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Syntax/MatrixEncoding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Syntax.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormulaTreeCellVariableTree.Variant78e59e8c0b87f05ab8dce0203f0a63034a87661813e8ef88c5b7d5bf8a2a6266

namespace Surface.Boolean

universe u

/-- Parse a matrix cell as a variable leaf. -/
def FormulaTree.cellVariableTree
    {rows cols : Nat}
    (i : Fin rows)
    (j : Fin cols) :
    FormulaTree (Fin rows × Fin cols) :=
  .var (i, j)

/-- Parse a matrix cell as a constant leaf. -/
def FormulaTree.cellConstTree
    {rows cols : Nat}
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    FormulaTree (Fin rows × Fin cols) :=
  match A i j with
  | true => .truth
  | false => .falsum

/-- A matrix as a network of constant Boolean trees, one tree per cell. -/
def FormulaTree.cellConstNetwork
    {rows cols : Nat}
    (A : BoolMatrix rows cols) :
    Fin rows → Fin cols → FormulaTree (Fin rows × Fin cols) :=
  fun i j => FormulaTree.cellConstTree A i j

/--
Factor one matrix row into a disjunction of variable leaves for cells containing
`1`. Cells containing `0` contribute the boundary constant `0`.
-/
def FormulaTree.rowSupportTree
    {rows cols : Nat}
    (A : BoolMatrix rows cols)
    (i : Fin rows) :
    FormulaTree (Fin rows × Fin cols) :=
  FormulaTree.disjList
    ((List.finRange cols).map
      (fun j =>
        match A i j with
        | true => .var (i, j)
        | false => .falsum))

/--
Factor a full Boolean matrix into a single tree: an OR over all active cells.
-/
def FormulaTree.supportTree
    {rows cols : Nat}
    (A : BoolMatrix rows cols) :
    FormulaTree (Fin rows × Fin cols) :=
  FormulaTree.disjList
    ((List.finRange rows).map
      (fun i => FormulaTree.rowSupportTree A i))

/--
Evaluate a Boolean matrix as a constant tree that returns `1` iff at least one
entry of the matrix is `1`.
-/
def FormulaTree.anyTrueTree
    {rows cols : Nat}
    (A : BoolMatrix rows cols) :
    FormulaTree (Fin rows × Fin cols) :=
  FormulaTree.disjList
    ((List.finRange rows).map
      (fun i =>
        FormulaTree.disjList
          ((List.finRange cols).map
            (fun j =>
              match A i j with
              | true => .truth
              | false => .falsum))))

end Surface.Boolean
```
