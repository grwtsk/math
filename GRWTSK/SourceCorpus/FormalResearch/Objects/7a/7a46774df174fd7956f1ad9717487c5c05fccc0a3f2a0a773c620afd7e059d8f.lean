import Presentation.Syntax
import Presentation.Binary
import Presentation.Semantics
import Presentation.Realization
import Presentation.Audit
import Presentation.SelfAnneal
import Presentation.SelfAnnealedProjectionNetwork
import Presentation.Transport
import Presentation.XYZRoute
import Presentation.XYZElliptic
import Presentation.XYZHeckeController
import Presentation.XYZDomModel
import Presentation.XYZColorTorus

/-!
What is formalized:
The production Presentation root exposes pure syntax, the binary tree
bijection, semantic evaluation, local audit predicates, payload-neutral
admitted-publication projection, operational finite self-annealing/network
views, and the downstream XYZ presentation adapters.  Projection state retains
the canonical bounded revision, exact admitted payload, and opaque transport
hashes.

Historical finite certificate-projection modules remain available through
explicit imports, but are intentionally not re-exported here.  In particular,
the legacy spine/cooling/search/prismatic/null-interface/closure/AST-labeling/
expressiveness/spectral-face/canvas/reasoning-surface records contain weaker
`Nat` identity metadata or arbitrary proposition-and-proof fields and are not
part of the production aggregate.

What is certificate-gated:
Any analytic, arithmetic, or spectral theorem using Presentation syntax must
provide separate checked hypotheses or certificates. Raw syntax does not own
computational expressiveness; interpreter authority is supplied by realization
metadata and witnesses. Explicit legacy spine imports remain subject to their
separate `SpineRealizationCertificate` boundary.
The source-code instrument and projection network consume admitted immutable
snapshots.  Generated labels, search results, renderer views, and color/torus
postcompositions remain presentation metadata and not theorem authority.

What is not claimed:
Presentation syntax is not theorem authority and does not prove BSD, RH,
Hilbert-Pólya, Connes trace formulas, Langlands functoriality, prismatic
comparison, spectral geometry, spectral triples, Turing completeness, machine
semantics, or external comparison theorems.

Primary mathematical source:
Internal Presentation design notes.
-/
