import Surface.AST.Core

namespace Surface

namespace AST

def ModuleGraph := List LeanModuleAst

def moduleGraphContains (graph : ModuleGraph) (moduleName : String) : Prop :=
  graph.any (fun moduleAst => decide (moduleAst.moduleName = moduleName)) = true

theorem empty_module_graph_contains_none (moduleName : String) :
    ¬ moduleGraphContains [] moduleName := by
  intro h
  simp [moduleGraphContains] at h

end AST

end Surface
