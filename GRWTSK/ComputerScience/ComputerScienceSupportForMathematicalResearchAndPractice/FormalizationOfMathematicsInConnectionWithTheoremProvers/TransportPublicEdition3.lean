module

public import Surface.Core.Transport.Hash
public import Surface.Core.Transport.Bytes
public import Surface.Core.Transport.Revision
public import Surface.Core.Transport.Route
public import Surface.Core.Transport.Payload
public import Surface.Core.Transport.Contract
public import Surface.Core.Transport.Proposal
public import Surface.Core.Transport.Verifier
public import Surface.Core.Transport.Register
public import Surface.Core.Transport.Convergence
public import Surface.Core.Transport.Certificate
public import Surface.Core.Transport.Authority

/-!
# Surface finite transport substrate

Payload-neutral, deterministic finite transport. This aggregate exports pure
framing, routing, admission, register, convergence, certificate, and authority
boundaries without granting transported metadata theorem authority.
-/
