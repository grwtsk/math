# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZeroData.Variant87eedc7512d6f1012dffa701802e93f78684ee399e31c460d798435298fa3117

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa47884c9ed3023be8efe175ddec2faeb725c100` · SHA-256 `87eedc7512d6f1012dffa701802e93f78684ee399e31c460d798435298fa3117`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.H0Translation

/-!
# Folder.RH.ZeroData

Radiation role: zero-data
BinaryMatrix spine: This module isolates raw zeta and H0 zero data.
Ontology: rh.zero_data
Pivot role: spectral
Zero typology: zeta
Contract boundary: raw-zero-data
Composite stack role: rh
-/

namespace Folder
namespace RH

/--
Raw nontrivial zeta-zero data.

This object only says which complex point is being represented and carries the
zero/nontriviality witness from `ZetaNontrivialZero`.
-/
structure RawZetaZeroData where
  point : ℂ
  witness : ZetaNontrivialZero point
  sourceLabel : String

/--
Raw `H_0` zero data.

This object only says which complex point is being represented and carries the
zero witness from `H0Zero`.
-/
structure RawH0ZeroData where
  point : ℂ
  witness : H0Zero point
  sourceLabel : String

theorem raw_zeta_zero_has_zero_statement
    (Z : RawZetaZeroData) :
    CompletedZeta Z.point = 0 :=
  Z.witness.1

theorem raw_zeta_zero_has_nontrivial_statement
    (Z : RawZetaZeroData) :
    NontrivialZetaZeroCondition Z.point :=
  Z.witness.2

theorem raw_h0_zero_has_zero_statement
    (Z : RawH0ZeroData) :
    H0 Z.point = 0 :=
  Z.witness

end RH
end Folder
```
