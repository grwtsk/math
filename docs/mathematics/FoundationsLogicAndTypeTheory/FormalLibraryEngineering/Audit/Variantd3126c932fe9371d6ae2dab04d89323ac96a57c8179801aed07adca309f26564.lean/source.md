# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Audit.Variantd3126c932fe9371d6ae2dab04d89323ac96a57c8179801aed07adca309f26564

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c92841db277849358babb0369856aabc3714f38a` · SHA-256 `d3126c932fe9371d6ae2dab04d89323ac96a57c8179801aed07adca309f26564`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Presentation.Transport.Projection

/-! # Presentation transport authority firewall -/

public section

namespace Presentation.Transport

@[surface_novel]
structure PresentationProjectionArtifact where
  projectionId : String
  rendererId : String
deriving DecidableEq, Repr

@[expose] def PresentationProjectionHasTheoremAuthority
    (_artifact : PresentationProjectionArtifact) : Prop :=
  False

@[surface_novel, surface_published]
theorem presentationProjection_has_no_theorem_authority
    (artifact : PresentationProjectionArtifact) :
    ¬ PresentationProjectionHasTheoremAuthority artifact := by
  simp [PresentationProjectionHasTheoremAuthority]

end Presentation.Transport
```
