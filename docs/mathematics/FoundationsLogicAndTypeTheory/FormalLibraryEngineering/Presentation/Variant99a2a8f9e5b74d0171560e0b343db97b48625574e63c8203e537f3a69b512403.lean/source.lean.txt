import Presentation.Syntax
import Presentation.Binary
import Presentation.Semantics
import Presentation.Realization
import Presentation.Audit

/-!
What is formalized:
The Presentation root exposes pure syntax, the binary tree bijection, semantic
evaluation, presentation certificates, and local audit predicates.

What is certificate-gated:
Any analytic, arithmetic, or spectral theorem using Presentation syntax must provide
separate checked hypotheses or certificates.

What is not claimed:
Presentation syntax is not theorem authority and does not prove BSD, RH, Hilbert-Pólya,
Connes trace formulas, or prismatic comparison theorems.

Primary mathematical source:
Internal Surface Presentation design notes.
-/
