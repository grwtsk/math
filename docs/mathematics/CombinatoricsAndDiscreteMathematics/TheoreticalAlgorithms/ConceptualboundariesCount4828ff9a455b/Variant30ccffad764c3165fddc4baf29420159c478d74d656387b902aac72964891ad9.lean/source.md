# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConceptualboundariesCount4828ff9a455b.Variant30ccffad764c3165fddc4baf29420159c478d74d656387b902aac72964891ad9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a98a6d76912a555259b0cfd0cea91cec2432132` · SHA-256 `30ccffad764c3165fddc4baf29420159c478d74d656387b902aac72964891ad9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Blueprint.blueprint_residue.files_count_e5edc52fb589
import Formal.Ast.Blueprint.blueprint_residue.files_count_7e8683b2aad3
import Formal.Ast.Blueprint.complex_special_functions.files_count_8367b86d0137
import Formal.Ast.Blueprint.proof_authority.files_count_1f39d2bd11cd
import Formal.Ast.Blueprint.harmonic_tauberian.files_count_a446835a6b62
import Formal.Ast.Blueprint.prime_asymptotics.files_count_35e4424a3de4
import Formal.Ast.Blueprint.blueprint_residue.files_count_c5e6f1ebd23e

/-!
Analytic blueprint surface.

This module exposes the conceptual boundaries of the analytic blueprint layer.
It deliberately imports only marker modules, not the unresolved theorem corpus.
-/

namespace Formal.Blueprint.Analytic

def conceptualBoundaries : List String :=
  [ "Foundation"
  , "Geometry"
  , "ComplexZeta"
  , "MellinPerron"
  , "FourierTauberian"
  , "PrimeAsymptotics"
  , "ArithmeticConstants"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 7 := by
  rfl

end Formal.Blueprint.Analytic
```
