# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixEncoding.Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfb0b8e243cbd42f0d9ceabe670a6fedfdc17cc3` · SHA-256 `fd55403ce9753cd6c439349ec6c185b2299d1a6cda5d926c73be468776a7c4ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TreeCellVariableTree.Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.TreeCellVariableTree.Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/MatrixEncoding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree.List
import Boolean.Matrix


namespace GRWTSK.Algebra.LinearAlgebra.TreeCellVariableTree.Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478

namespace Boolean

universe u

/-- Parse a matrix cell as a variable leaf. -/
def Tree.cellVariableTree
    {rows cols : Nat}
    (i : Fin rows)
    (j : Fin cols) :
    Tree (Fin rows × Fin cols) :=
  .var (i, j)

/-- Parse a matrix cell as a constant leaf. -/
def Tree.cellConstTree
    {rows cols : Nat}
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Tree (Fin rows × Fin cols) :=
  match A i j with
  | true => .truth
  | false => .falsum

/-- A matrix as a network of constant Boolean trees, one tree per cell. -/
def Tree.cellConstNetwork
    {rows cols : Nat}
    (A : Matrix rows cols) :
    Fin rows → Fin cols → Tree (Fin rows × Fin cols) :=
  fun i j => Tree.cellConstTree A i j

/--
Factor one matrix row into a disjunction of variable leaves for cells containing
`1`. Cells containing `0` contribute the boundary constant `0`.
-/
def Tree.rowSupportTree
    {rows cols : Nat}
    (A : Matrix rows cols)
    (i : Fin rows) :
    Tree (Fin rows × Fin cols) :=
  Tree.disjList
    ((List.finRange cols).map
      (fun j =>
        match A i j with
        | true => .var (i, j)
        | false => .falsum))

/--
Factor a full Boolean matrix into a single tree: an OR over all active cells.
-/
def Tree.supportTree
    {rows cols : Nat}
    (A : Matrix rows cols) :
    Tree (Fin rows × Fin cols) :=
  Tree.disjList
    ((List.finRange rows).map
      (fun i => Tree.rowSupportTree A i))

/--
Evaluate a Boolean matrix as a constant tree that returns `1` iff at least one
entry of the matrix is `1`.
-/
def Tree.anyTrueTree
    {rows cols : Nat}
    (A : Matrix rows cols) :
    Tree (Fin rows × Fin cols) :=
  Tree.disjList
    ((List.finRange rows).map
      (fun i =>
        Tree.disjList
          ((List.finRange cols).map
            (fun j =>
              match A i j with
              | true => .truth
              | false => .falsum))))

end Boolean
```
