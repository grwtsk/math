module

/-!
# Generated trial quarantine

Scratch candidates may be added beneath `Generated.Trial`, but this module is
compiled only through the explicit `SurfaceGenerated` target.  The canonical
`Surface` root never imports it.
-/

namespace Generated.Trial

/-- Empty marker proving that the generated target is intentionally present. -/
def quarantined : Bool := true

end Generated.Trial
