# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ScheduleFamily.Variant581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c853bdb901a4c2782cd45c4e1728608ee7d7c47` · SHA-256 `581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# Registered finite schedule family
-/

namespace Mathematics.StratifiedBoundary

structure RegisteredScheduleFamily (Schedule : Type u)
    [DecidableEq Schedule] where
  familyId : String
  schedules : Finset Schedule
  nonempty : schedules.Nonempty
  authorityRef : String

end Mathematics.StratifiedBoundary
```
