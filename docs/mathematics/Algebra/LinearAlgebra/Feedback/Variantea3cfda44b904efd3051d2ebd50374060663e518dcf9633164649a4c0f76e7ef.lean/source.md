# Complete source: GRWTSK.Algebra.LinearAlgebra.Feedback.Variantea3cfda44b904efd3051d2ebd50374060663e518dcf9633164649a4c0f76e7ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f723bee0c58cedd7566ea986ab920bb1be23f93b` · SHA-256 `aaa1929b11a3d43bc7f88d4f23d7ee4aaaac9f3f3d0fc96000eb6812b1015b01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DependencyEdge.Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.DependencyEdge.Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/BooleanNetwork/Feedback.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.BooleanNetwork
import Boolean.Matrix.Cycle


namespace GRWTSK.Algebra.LinearAlgebra.DependencyEdge.Variant9fca828c082f6d51c9658b26a2bcd576026c53560b438907a2bb9babe7f9e780

namespace Boolean.Cube

namespace BooleanNetwork

/-- A dependency edge from `source` to `target` in the network dependency diagram. -/
def DependencyEdge {n : Nat}
    (N : BooleanNetwork.Network n)
    (source target : Fin n) :
    Prop :=
  BooleanNetwork.dependsOn N source target = true

/-- A feedback cycle through coordinate `start` in the dependency diagram. -/
def DependencyFeedbackAt {n : Nat}
    (N : BooleanNetwork.Network n)
    (start : Fin n) :
    Prop :=
  Matrix.CycleAt (BooleanNetwork.dependencyMatrix N) start

/-- The dependency diagram has at least one feedback cycle. -/
def HasDependencyFeedback {n : Nat}
    (N : BooleanNetwork.Network n) :
    Prop :=
  Matrix.HasCycle (BooleanNetwork.dependencyMatrix N)

@[simp] theorem dependencyMatrix_entry {n : Nat}
    (N : BooleanNetwork.Network n)
    (source target : Fin n) :
    Matrix.entry (BooleanNetwork.dependencyMatrix N) source target =
      BooleanNetwork.dependsOn N source target := rfl

theorem dependencyEdge_iff_matrixEdge {n : Nat}
    (N : BooleanNetwork.Network n)
    (source target : Fin n) :
    BooleanNetwork.DependencyEdge N source target ↔
      Matrix.Edge (BooleanNetwork.dependencyMatrix N) source target := by
  rfl

theorem dependencyFeedbackAt_of_self_dependency {n : Nat}
    (N : BooleanNetwork.Network n)
    (i : Fin n)
    (h : BooleanNetwork.DependencyEdge N i i) :
    BooleanNetwork.DependencyFeedbackAt N i := by
  exact Matrix.cycleAt_of_loop h

theorem dependencyFeedbackAt_of_mutual_dependency {n : Nat}
    (N : BooleanNetwork.Network n)
    (source target : Fin n)
    (hforward : BooleanNetwork.DependencyEdge N source target)
    (hback : BooleanNetwork.DependencyEdge N target source) :
    BooleanNetwork.DependencyFeedbackAt N source := by
  exact Matrix.cycleAt_of_two_step hforward hback

theorem dependencyFeedbackAt_of_closed_walk {n : Nat}
    (N : BooleanNetwork.Network n)
    (start : Fin n)
    (path : List (Fin n))
    (hnonempty : path ≠ [])
    (hwalk :
      Matrix.IsWalkFrom
        (BooleanNetwork.dependencyMatrix N)
        start path start) :
    BooleanNetwork.DependencyFeedbackAt N start := by
  exact ⟨path, hnonempty, hwalk⟩

theorem hasDependencyFeedback_of_feedbackAt {n : Nat}
    (N : BooleanNetwork.Network n)
    (start : Fin n)
    (hfeedback : BooleanNetwork.DependencyFeedbackAt N start) :
    BooleanNetwork.HasDependencyFeedback N :=
  Matrix.hasCycle_of_cycleAt hfeedback

theorem hasDependencyFeedback_of_self_dependency {n : Nat}
    (N : BooleanNetwork.Network n)
    (i : Fin n)
    (h : BooleanNetwork.DependencyEdge N i i) :
    BooleanNetwork.HasDependencyFeedback N := by
  exact
    BooleanNetwork.hasDependencyFeedback_of_feedbackAt N i
      (BooleanNetwork.dependencyFeedbackAt_of_self_dependency N i h)

theorem hasDependencyFeedback_of_mutual_dependency {n : Nat}
    (N : BooleanNetwork.Network n)
    (source target : Fin n)
    (hforward : BooleanNetwork.DependencyEdge N source target)
    (hback : BooleanNetwork.DependencyEdge N target source) :
    BooleanNetwork.HasDependencyFeedback N := by
  exact
    BooleanNetwork.hasDependencyFeedback_of_feedbackAt N source
      (BooleanNetwork.dependencyFeedbackAt_of_mutual_dependency
        N source target hforward hback)

end BooleanNetwork

end Boolean.Cube
```
