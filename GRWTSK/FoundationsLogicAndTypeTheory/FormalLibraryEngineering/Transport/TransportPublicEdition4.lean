module

public import Presentation.Transport.Model
public import Presentation.Transport.Projection
public import Presentation.Transport.Audit

/-!
# Generic admitted-publication presentation adapter

The adapter consumes exact transport state and emits derived views. It never
creates a second revision, payload, hash, or theorem authority.
-/
