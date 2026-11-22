# Composable finite rejection blocks

[Lean source](Riemann95BlockRejection.lean), SHA-256 `39422c6abf19eefdf8986ce2f83a8a1cfe0f366fdf35d274bf3f2bbe7b0d4a03`, uses [the exact prefix checker](Riemann95FirstRejectedStage.lean), blob `1efb32384da4ed5f4fabc94c73f32618092db57d`. It checks exactly the absolute ordinals in [95lo,95hi) using the same predicate at argument m+2. The existing source adapter pins Cryptids at `3647718b5df22e1a61462dec0376bd204526285a`. [Published coverage and adapter](https://github.com/grwtsk/math/issues/1820)

The block summary is its least rejected ordinal or top if the block is wholly safe. Splitting at an ordered middle window partitions the rejection set, so taking the minimum of the two summaries gives the original full summary regardless of arrival order. At lo=0 this agrees exactly with the earlier option-valued first-rejection result. The shared-boundary control states that a hypothetical rejection at ordinal 95, argument 97, belongs exclusively to the second of the blocks [0,1) and [1,2). It makes no claim that the native argument 97 rejects.

The consumer still requires receipts that certify the exact block predicate and cover the claimed interval. Universal coverage is a separate obligation. The offset chat's normalized checkpoints address one selected stage per block, while this interface summarizes a complete finite block.

Exact targeted Lake build, strict source elaboration, module-only kernel replay and four axiom audits passed. The audits reported only propext, Classical.choice and Quot.sound. Draft tactic failures in the merge and empty-block proofs were corrected. Whole dependency replay, isolated Cryptids rebuild, independent review and physical runtime parity were NOT_RUN.
