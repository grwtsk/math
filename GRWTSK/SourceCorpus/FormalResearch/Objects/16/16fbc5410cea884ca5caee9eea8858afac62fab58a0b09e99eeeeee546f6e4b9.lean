import Surface.Refactor.Syntax
import Surface.Refactor.TheoremEnvelope

/-!
# Structural packet and theorem-envelope axiom audit

The binary bracket word is audited only as a proved lossy projection of the
rich packet.  The transported theorem envelope preserves identity metadata and
contains no proof term or proposition-valued authority certificate.
-/

#print axioms Surface.Refactor.Syntax.bracketProjection_length_eq_twice_nodeCount
#print axioms Surface.Refactor.Syntax.bracketProjection_prefix_nonnegative
#print axioms Surface.Refactor.Syntax.bracketProjection_final_zero
#print axioms Surface.Refactor.Syntax.bracketProjection_balanced
#print axioms Surface.Refactor.Syntax.bracketProjection_shape_roundtrip
#print axioms Surface.Refactor.Syntax.bracketProjection_is_not_source_complete

#print axioms Surface.Refactor.transportedTheoremEnvelope_preserves_declaration_name
#print axioms Surface.Refactor.transportedTheoremEnvelope_preserves_statement_hash
#print axioms Surface.Refactor.transportedTheoremEnvelope_preserves_normalized_type_hash
#print axioms Surface.Refactor.transportedTheoremEnvelope_preserves_authority_label
#print axioms Surface.Refactor.transportedTheoremEnvelope_does_not_prove_task
