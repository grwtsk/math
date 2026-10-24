# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LintExceptions.Variant76862c7dd647a335365ae07b5e4e3a22e6f4adb70517981617e4ba5e3a5e17b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd1c072fa5dd727b8da9e5ccf5381fc56e82da47` · SHA-256 `76862c7dd647a335365ae07b5e4e3a22e6f4adb70517981617e4ba5e3a5e17b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module  -- shake: keep-all (almost-terminal module, `#grind_lint` does not track extra deps)
prelude
import Init
import Std
import Lean.Elab.Tactic.Grind.Lint

-- We allow these as grind lemmas even though they triggers >20 further instantiations.
-- See tests/lean/run/grind_lint_*.lean for more details.
#grind_lint skip BitVec.msb_extractLsb
#grind_lint skip BitVec.msb_signExtend
#grind_lint skip BitVec.toInt_shiftLeftZeroExtend
#grind_lint skip List.replicate_sublist_iff
#grind_lint skip List.Sublist.append
#grind_lint skip List.Sublist.middle
#grind_lint skip List.getLast?_pmap
#grind_lint skip List.drop_append_length
#grind_lint skip List.getLast_scanr
#grind_lint skip Array.back_singleton
#grind_lint skip Array.count_singleton
#grind_lint skip Array.foldl_empty
#grind_lint skip Array.foldr_empty

#grind_lint skip suffix sizeOf_spec
```
