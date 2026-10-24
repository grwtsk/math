/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Imported Lean/Mathlib authorship and Apache-2.0 licensing remain attached to their imports. -/
import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixTableCompaction

set_option autoImplicit false

open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableState
open GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableCompaction.Checks.Positive

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableCompaction.Checks.Negative

/-- Valid bounds on stale slots do not identify the old full histories after compaction. -/
example : decode stale = some [(11, [falseTag]), (11, [falseTag])] := stale_actual_decode

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableCompaction.Checks.Negative
