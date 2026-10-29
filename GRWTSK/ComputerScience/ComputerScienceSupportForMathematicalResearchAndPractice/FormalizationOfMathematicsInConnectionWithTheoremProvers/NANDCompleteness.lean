import Folder.Boolean.Completeness

/-!
# Folder.Theorem.Boolean.NANDCompleteness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.boolean.nandcompleteness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Boolean

theorem nand_functionally_complete
    (e : BoolExpr)
    (ρ : Env) :
    (compileToNand e).eval ρ = e.eval ρ :=
  compileToNand_correct e ρ

end Boolean
end Folder
