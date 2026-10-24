# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Resolver.Variant51e6f2be724fb5088eb4bb0297fd0bb90919abc956f68f9dd64ef0fd6b5555d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3165c6f7ca85c812596f61d5ecca34da6ad269b` · SHA-256 `51e6f2be724fb5088eb4bb0297fd0bb90919abc956f68f9dd64ef0fd6b5555d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Core.Request
import Mathematics.GraphAccess.Core.Receipt

/-!
# Total conservative access resolution over typed finite evidence

Totality means a typed outcome for every typed resolver evidence value.  It
does not decide graph finiteness, reachability, completion semantics, or any
other open project fact.
-/

namespace Mathematics.GraphAccess

inductive GraphAccessResolution
    (Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u)
  | path (value : Path)
  | frontier (value : Frontier)
  | coverage (value : Coverage)
  | sample (value : Sample)
  | proposal (value : Proposal)
  | obstruction (value : Obstruction)
  | unknown (kinds : List GraphAccessUnknownKind)
  | rejected (reason : Rejection)

inductive GraphAccessEvidence
    (Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u)
  | path (value : Path)
  | frontier (value : Frontier)
  | coverage (value : Coverage)
  | sample (value : Sample)
  | proposal (value : Proposal)
  | obstruction (value : Obstruction)
  | unknown (kinds : List GraphAccessUnknownKind)
  | rejected (reason : Rejection)

def resolveAccess
    {Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u} :
    GraphAccessEvidence
      Path Frontier Coverage Sample Proposal Obstruction Rejection →
    GraphAccessResolution
      Path Frontier Coverage Sample Proposal Obstruction Rejection
  | .path value => .path value
  | .frontier value => .frontier value
  | .coverage value => .coverage value
  | .sample value => .sample value
  | .proposal value => .proposal value
  | .obstruction value => .obstruction value
  | .unknown kinds => .unknown kinds
  | .rejected reason => .rejected reason

theorem access_resolver_total
    {Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u}
    (evidence :
      GraphAccessEvidence
        Path Frontier Coverage Sample Proposal Obstruction Rejection) :
    ∃ result, resolveAccess evidence = result :=
  ⟨resolveAccess evidence, rfl⟩

end Mathematics.GraphAccess
```
