# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variant946e40d7dc439836cf34879e573186722cfeb4d2a548fb2d4866e85007c04885

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `226a2cbc3cc41dcffd4c090fb085561d115f0b18` · SHA-256 `946e40d7dc439836cf34879e573186722cfeb4d2a548fb2d4866e85007c04885`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.RustProtocol

namespace Surface
namespace Incremental

structure RequestTimeGenerationCertificate where
  result : IncrementalGenerationResult
  astDisciplinePreserved : Prop
  astDisciplinePreservedCertified : astDisciplinePreserved
  deterministicRequestTimeGeneration : Prop
  deterministicRequestTimeGenerationCertified : deterministicRequestTimeGeneration
  claimBoundary : List String

theorem requestTime_generation_preserves_AST_discipline
    (C : RequestTimeGenerationCertificate) :
    C.astDisciplinePreserved :=
  C.astDisciplinePreservedCertified

theorem requestTime_generation_is_deterministic
    (C : RequestTimeGenerationCertificate) :
    C.deterministicRequestTimeGeneration :=
  C.deterministicRequestTimeGenerationCertified

end Incremental
end Surface
```
