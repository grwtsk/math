# Complete source: GRWTSK.Algebra.LinearAlgebra.Audit.Variant68b1cbd98cb16b7616ec61d64a9098efe0506a7838b8a3b551c9acbd70f209aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9da82f0edb12acbbfea9acda2e67c342a3e53ed2` · SHA-256 `68b1cbd98cb16b7616ec61d64a9098efe0506a7838b8a3b551c9acbd70f209aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Calculus
import MatrixCalculus
import Certificates
import Geometry
import SignedDefect
import Reduction
import ArithmeticDefect
set_option pp.universes true
#check FormalResearch.MutationGame.mutate_other
#print axioms FormalResearch.MutationGame.mutate_other
#check FormalResearch.MutationGame.mutate_involutive
#print axioms FormalResearch.MutationGame.mutate_involutive
#check FormalResearch.MutationGame.play_nil
#print axioms FormalResearch.MutationGame.play_nil
#check FormalResearch.MutationGame.play_cons
#print axioms FormalResearch.MutationGame.play_cons
#check FormalResearch.MutationGame.play_append
#print axioms FormalResearch.MutationGame.play_append
#check FormalResearch.MutationGame.play_reverse
#print axioms FormalResearch.MutationGame.play_reverse
#check FormalResearch.MutationGame.play_reachable
#print axioms FormalResearch.MutationGame.play_reachable
#check FormalResearch.MutationGame.certificate_check_sound
#print axioms FormalResearch.MutationGame.certificate_check_sound
#check FormalResearch.MutationGame.certificate_cardinality
#print axioms FormalResearch.MutationGame.certificate_cardinality
#check FormalResearch.MutationGame.mutationMatrix_mulVec
#print axioms FormalResearch.MutationGame.mutationMatrix_mulVec
#check FormalResearch.MutationGame.mutationMatrix_sq
#print axioms FormalResearch.MutationGame.mutationMatrix_sq
#check FormalResearch.MutationGame.mutationMatrix_det
#print axioms FormalResearch.MutationGame.mutationMatrix_det
#check FormalResearch.MutationGame.wordMatrix_mulVec
#print axioms FormalResearch.MutationGame.wordMatrix_mulVec
#check FormalResearch.MutationGame.wordMatrix_append
#print axioms FormalResearch.MutationGame.wordMatrix_append
#check FormalResearch.MutationGame.wordMatrix_reverse
#print axioms FormalResearch.MutationGame.wordMatrix_reverse
#check FormalResearch.MutationGame.d4_seeds_checked
#print axioms FormalResearch.MutationGame.d4_seeds_checked
#check FormalResearch.MutationGame.d4_transitions_checked
#print axioms FormalResearch.MutationGame.d4_transitions_checked
#check FormalResearch.MutationGame.d4_words_checked
#print axioms FormalResearch.MutationGame.d4_words_checked
#check FormalResearch.MutationGame.d4_states_leftInverse
#print axioms FormalResearch.MutationGame.d4_states_leftInverse
#check FormalResearch.MutationGame.d4_valid
#print axioms FormalResearch.MutationGame.d4_valid
#check FormalResearch.MutationGame.d4_checked
#print axioms FormalResearch.MutationGame.d4_checked
#check FormalResearch.MutationGame.d4_orbit_exact
#print axioms FormalResearch.MutationGame.d4_orbit_exact
#check FormalResearch.MutationGame.d4_orbit_cardinality
#print axioms FormalResearch.MutationGame.d4_orbit_cardinality
#check FormalResearch.MutationGame.d4_positive_count
#print axioms FormalResearch.MutationGame.d4_positive_count
#check FormalResearch.MutationGame.d4_negative_count
#print axioms FormalResearch.MutationGame.d4_negative_count
#check FormalResearch.MutationGame.d4_norm_two
#print axioms FormalResearch.MutationGame.d4_norm_two
#check FormalResearch.MutationGame.e8_seeds_checked
#print axioms FormalResearch.MutationGame.e8_seeds_checked
#check FormalResearch.MutationGame.e8_transitions_checked
#print axioms FormalResearch.MutationGame.e8_transitions_checked
#check FormalResearch.MutationGame.e8_words_checked
#print axioms FormalResearch.MutationGame.e8_words_checked
#check FormalResearch.MutationGame.e8_states_leftInverse
#print axioms FormalResearch.MutationGame.e8_states_leftInverse
#check FormalResearch.MutationGame.e8_valid
#print axioms FormalResearch.MutationGame.e8_valid
#check FormalResearch.MutationGame.e8_checked
#print axioms FormalResearch.MutationGame.e8_checked
#check FormalResearch.MutationGame.e8_orbit_exact
#print axioms FormalResearch.MutationGame.e8_orbit_exact
#check FormalResearch.MutationGame.e8_orbit_cardinality
#print axioms FormalResearch.MutationGame.e8_orbit_cardinality
#check FormalResearch.MutationGame.e8_positive_count
#print axioms FormalResearch.MutationGame.e8_positive_count
#check FormalResearch.MutationGame.e8_negative_count
#print axioms FormalResearch.MutationGame.e8_negative_count
#check FormalResearch.MutationGame.e8_norm_two
#print axioms FormalResearch.MutationGame.e8_norm_two
#check FormalResearch.MutationGame.Geometry.d4_matrix_metric
#print axioms FormalResearch.MutationGame.Geometry.d4_matrix_metric
#check FormalResearch.MutationGame.Geometry.d4_coxeter_word
#print axioms FormalResearch.MutationGame.Geometry.d4_coxeter_word
#check FormalResearch.MutationGame.Geometry.d4_power_recurrence
#print axioms FormalResearch.MutationGame.Geometry.d4_power_recurrence
#check FormalResearch.MutationGame.Geometry.d4_pow_certificate
#print axioms FormalResearch.MutationGame.Geometry.d4_pow_certificate
#check FormalResearch.MutationGame.Geometry.d4_coxeter_exact_order
#print axioms FormalResearch.MutationGame.Geometry.d4_coxeter_exact_order
#check FormalResearch.MutationGame.Geometry.d4_ldl
#print axioms FormalResearch.MutationGame.Geometry.d4_ldl
#check FormalResearch.MutationGame.Geometry.d4_lower_det
#print axioms FormalResearch.MutationGame.Geometry.d4_lower_det
#check FormalResearch.MutationGame.Geometry.d4_positive_definite
#print axioms FormalResearch.MutationGame.Geometry.d4_positive_definite
#check FormalResearch.MutationGame.Geometry.d4_determinant
#print axioms FormalResearch.MutationGame.Geometry.d4_determinant
#check FormalResearch.MutationGame.Geometry.d4_integer_determinant
#print axioms FormalResearch.MutationGame.Geometry.d4_integer_determinant
#check FormalResearch.MutationGame.Geometry.e8_matrix_metric
#print axioms FormalResearch.MutationGame.Geometry.e8_matrix_metric
#check FormalResearch.MutationGame.Geometry.e8_coxeter_word
#print axioms FormalResearch.MutationGame.Geometry.e8_coxeter_word
#check FormalResearch.MutationGame.Geometry.e8_power_recurrence
#print axioms FormalResearch.MutationGame.Geometry.e8_power_recurrence
#check FormalResearch.MutationGame.Geometry.e8_pow_certificate
#print axioms FormalResearch.MutationGame.Geometry.e8_pow_certificate
#check FormalResearch.MutationGame.Geometry.e8_coxeter_exact_order
#print axioms FormalResearch.MutationGame.Geometry.e8_coxeter_exact_order
#check FormalResearch.MutationGame.Geometry.e8_ldl
#print axioms FormalResearch.MutationGame.Geometry.e8_ldl
#check FormalResearch.MutationGame.Geometry.e8_lower_det
#print axioms FormalResearch.MutationGame.Geometry.e8_lower_det
#check FormalResearch.MutationGame.Geometry.e8_positive_definite
#print axioms FormalResearch.MutationGame.Geometry.e8_positive_definite
#check FormalResearch.MutationGame.Geometry.e8_determinant
#print axioms FormalResearch.MutationGame.Geometry.e8_determinant
#check FormalResearch.MutationGame.Geometry.e8_integer_determinant
#print axioms FormalResearch.MutationGame.Geometry.e8_integer_determinant
#check FormalResearch.MutationGame.Geometry.quarter_turn_adapter
#print axioms FormalResearch.MutationGame.Geometry.quarter_turn_adapter
#check FormalResearch.MutationGame.Geometry.quarter_turn_words
#print axioms FormalResearch.MutationGame.Geometry.quarter_turn_words
#check FormalResearch.MutationGame.Geometry.quarter_turn
#print axioms FormalResearch.MutationGame.Geometry.quarter_turn
#check FormalResearch.MutationGame.Geometry.embedding_gram
#print axioms FormalResearch.MutationGame.Geometry.embedding_gram
#check FormalResearch.MutationGame.Geometry.embedding_intertwining
#print axioms FormalResearch.MutationGame.Geometry.embedding_intertwining
#check FormalResearch.MutationGame.Geometry.coordinate_complement_not_invariant
#print axioms FormalResearch.MutationGame.Geometry.coordinate_complement_not_invariant
#check FormalResearch.MutationGame.Geometry.extended_words
#print axioms FormalResearch.MutationGame.Geometry.extended_words
#check FormalResearch.MutationGame.Geometry.sector_anticommutation
#print axioms FormalResearch.MutationGame.Geometry.sector_anticommutation
#check FormalResearch.MutationGame.Geometry.ambient_anticommutation_fails
#print axioms FormalResearch.MutationGame.Geometry.ambient_anticommutation_fails
#check FormalResearch.MutationGame.SignedDefect.defect_comp
#print axioms FormalResearch.MutationGame.SignedDefect.defect_comp
#check FormalResearch.MutationGame.SignedDefect.defect_involution
#print axioms FormalResearch.MutationGame.SignedDefect.defect_involution
#check FormalResearch.MutationGame.SignedDefect.pairing_pullback
#print axioms FormalResearch.MutationGame.SignedDefect.pairing_pullback
#check FormalResearch.MutationGame.SignedDefect.pairing_sub
#print axioms FormalResearch.MutationGame.SignedDefect.pairing_sub
#check FormalResearch.MutationGame.SignedDefect.pairing_defect
#print axioms FormalResearch.MutationGame.SignedDefect.pairing_defect
#check FormalResearch.MutationGame.SignedDefect.refinement_increment
#print axioms FormalResearch.MutationGame.SignedDefect.refinement_increment
#check FormalResearch.MutationGame.SignedDefect.actual_pairing
#print axioms FormalResearch.MutationGame.SignedDefect.actual_pairing
#check FormalResearch.MutationGame.SignedDefect.actual_move_defect
#print axioms FormalResearch.MutationGame.SignedDefect.actual_move_defect
#check FormalResearch.MutationGame.reduce_mutate
#print axioms FormalResearch.MutationGame.reduce_mutate
#check FormalResearch.MutationGame.reduce_play
#print axioms FormalResearch.MutationGame.reduce_play
#check FormalResearch.MutationGame.reduced_mutation_determinant
#print axioms FormalResearch.MutationGame.reduced_mutation_determinant
#check FormalResearch.MutationGame.reduced_mutation_isUnit
#print axioms FormalResearch.MutationGame.reduced_mutation_isUnit
#check FormalResearch.MutationGame.ArithmeticDefect.literal_readout
#print axioms FormalResearch.MutationGame.ArithmeticDefect.literal_readout
#check FormalResearch.MutationGame.ArithmeticDefect.literal_move_defect
#print axioms FormalResearch.MutationGame.ArithmeticDefect.literal_move_defect
#check FormalResearch.MutationGame.ArithmeticDefect.literal_dual_compensation
#print axioms FormalResearch.MutationGame.ArithmeticDefect.literal_dual_compensation
```
