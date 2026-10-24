# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Homomorphisms.ShellPermutationMaps.Variantec1401243bc73c4f.NonidentityImageAndMapLaws

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b0fa3a61d93aa291089d64724301cc3fa21b4aa` · SHA-256 `d5f26ca7b458dc9a5b553de8b28a07067ea4fb01d05b58a15c25115f5f2eb4f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
NonidentityImageAndMapLaws — individually reviewed exact mathematical source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ec1401243bc73c4f40020dca41680124b1d144c24dfe050f7e95bcc65ecdf7d8
Organized SHA-256: 7eb2761146182dcd107a1183342554fc9ecfdf2e42aac09904c43844759538fc
PMD: 510.1.030.010.040 homomorphisms (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- UsesTorsionClass is exactly the source map-nonidentity predicate, without an IsTorsion/HasOrder premise. Both full projection proofs and all K/Field/E/G/s/R/P/Q contexts stay exact. No torsion classification or newly constructed representation is inferred. -/

import Folder.Arithmetic.Torsion
import Folder.Expansion.ShellTorsion
import Folder.Monodromy.EllipticTorsionAction

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Homomorphisms.ShellPermutationMaps.Variantec1401243bc73c4f.IdentityAndCompositionMapData

/-!
# Folder.Research.TorsionShellComparison

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.torsion_shell_comparison
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Homomorphisms.ShellPermutationMaps.Variantec1401243bc73c4f

open Folder
open Folder.Research

def UsesTorsionClass
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s)
    (P : Arithmetic.ECPoint E) : Prop :=
  R.map P ≠ Folder.Expansion.ShellTorsion.id s


theorem shell_twist_of_zero_is_identity
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s) :
    R.map (Arithmetic.ECPoint.infinity (E := E)) =
      Folder.Expansion.ShellTorsion.id s :=
  R.map_zero


theorem shell_twist_respects_add
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : EllipticToShellTorsion G s)
    (P Q : Arithmetic.ECPoint E) :
    R.map (G.add P Q) =
      Folder.Expansion.ShellTorsion.comp (R.map P) (R.map Q) :=
  R.map_add P Q

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Homomorphisms.ShellPermutationMaps.Variantec1401243bc73c4f
```
