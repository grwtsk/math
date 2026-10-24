# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Homomorphisms.ShellPermutationMapConsequences.Variant63ab1c327d255ce3.ExistingProviderMapEquations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `761d554cae68f1f22262c1388d528a843a2eed5f` · SHA-256 `dd4c470e887a12691d972d94b9285799f74f736f7636b2ecdbb851363e21b9dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ExistingProviderMapEquations — individually reviewed exact mathematical source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 63ab1c327d255ce3e4013974f5ef032c42633397dbf4af23bd774cee98e6e5e0
Organized SHA-256: 90671beadd490aa647117313315ac5c89bb65be20118ef09038052c593072e8f
PMD: 510.1.030.010.040 homomorphisms (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact original supplied R/G and Field/curve/shape contexts, identity/composition equations and qualified proof calls. No new248 provider substitution, constructed homomorphism, point-torsion assertion, faithfulness or elliptic/shell identification is added. -/

import Folder.Research.TorsionShellComparison

/-!
# Folder.Theorem.Research.TorsionShellComparison

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.torsion_shell_comparison
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Homomorphisms.ShellPermutationMapConsequences.Variant63ab1c327d255ce3

open Folder
open Folder.Research

theorem shell_twist_of_zero_is_identity
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : Folder.Research.TorsionShellComparison.EllipticToShellTorsion G s) :
    R.map (Arithmetic.ECPoint.infinity (E := E)) =
      Folder.Expansion.ShellTorsion.id s :=
  Folder.Research.TorsionShellComparison.shell_twist_of_zero_is_identity R


theorem shell_twist_respects_add
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : Folder.Research.TorsionShellComparison.EllipticToShellTorsion G s)
    (P Q : Arithmetic.ECPoint E) :
    R.map (G.add P Q) =
      Folder.Expansion.ShellTorsion.comp (R.map P) (R.map Q) :=
  Folder.Research.TorsionShellComparison.shell_twist_respects_add R P Q

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Homomorphisms.ShellPermutationMapConsequences.Variant63ab1c327d255ce3
```
