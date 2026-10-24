# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FourierTauberian.Varianta337e1e919385ab2c75841322738ff272a20932fbda834930fa308aa73ec3af6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `237a51a93d7c3dc779c90a53ca025dfeda2362a4` · SHA-256 `a337e1e919385ab2c75841322738ff272a20932fbda834930fa308aa73ec3af6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Fourier/Tauberian analytic blueprint boundary.

This marker groups Fourier, Sobolev, smoothing, and Wiener blueprint material
without importing unresolved files.
-/

namespace Formal.Blueprint.Analytic.FourierTauberian

def files : List String :=
  [ "Fourier"
  , "SmoothExistence"
  , "Sobolev"
  , "Wiener"
  ]

theorem files_count : files.length = 4 := by
  rfl

end Formal.Blueprint.Analytic.FourierTauberian
```
