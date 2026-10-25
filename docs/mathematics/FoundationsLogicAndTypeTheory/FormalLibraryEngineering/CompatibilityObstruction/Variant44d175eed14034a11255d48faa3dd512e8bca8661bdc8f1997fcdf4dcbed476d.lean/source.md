# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibilityObstruction.Variant44d175eed14034a11255d48faa3dd512e8bca8661bdc8f1997fcdf4dcbed476d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78659ebbb34004787c5854a687418a3f4e2b6d0d` · SHA-256 `44d175eed14034a11255d48faa3dd512e8bca8661bdc8f1997fcdf4dcbed476d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.CompatibilityObstruction

/-!
# Folder.Theorem.GrandChallenge.CompatibilityObstruction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports grand-challenge obstruction facts.
Ontology: proof.grand_challenge_compatibility_obstruction
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem forbidden_produces_obstruction_if_supplied
    (P : Folder.GrandChallenge.CompatibilityObstructionProgram) :
    P.forbiddenProducesObstruction :=
  Folder.GrandChallenge.forbidden_produces_obstruction_if_supplied P

theorem compatibility_excludes_forbidden_if_supplied
    (P : Folder.GrandChallenge.CompatibilityObstructionProgram) :
    P.compatibilityExcludesForbidden :=
  Folder.GrandChallenge.compatibility_excludes_forbidden_if_supplied P

end GrandChallenge
end Theorem
end Folder

```
