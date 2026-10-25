---
schema_version: "0.1.1"
id: "urn:uuid:288184e4-fc3b-4ab8-a49b-f1f8eb6c583c"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Bilinear and quadratic form theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-linear-algebra", "target": "urn:uuid:509be9db-5515-4b74-8ce8-b357def3cc4c", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L66"], "rationale": "Selects additional form data on vector spaces over specified commutative fields and maps preserving that data."}]
navigation_parent: "urn:uuid:509be9db-5515-4b74-8ce8-b357def3cc4c"
facets: []
relations: []
sources: [{"key": "L66", "locator": "Official MSC2020 browser, bounded 15A63 heading and its linear-algebra context; reference-only inspection 2026-10-25."}]
warrant: {"literary": "Standard form terminology is independently supported by the official classification browser; no classification dataset or crosswalk is imported.", "user": "Retrieve concrete scalar forms, restrictions and form-preserving maps independently of source storage and research application.", "organizational": "Separate coefficient and characteristic conventions, positivity, principal restrictions and proof acceptance."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "2026-10-25-proposed", "date": "2026-10-25", "change": "Original form-theory scope and proposed parent; no theorem, source migration or proof promotion."}]
proposal_refs: ["urn:uuid:9302bac7-b930-46d0-a980-1fd4b95f1d25"]
decision_refs: []
---
# Bilinear and quadratic form theory

[Linear algebra](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of bilinear forms and quadratic forms on vector spaces over specified
commutative fields, including their restrictions, equivalences and maps that
preserve the forms.

## Scope

A bilinear form is linear separately in its two arguments. A quadratic form has
degree-two scalar homogeneity and a bilinear polar form. Its relation to a
symmetric bilinear form must retain the field characteristic; recovering a form
by division by two is not a characteristic-two convention. A concrete homogeneous
quadratic polynomial can warrant this subject without using a particular proof
assistant's bundled form type.

State dimension, field, symmetry, nondegeneracy and any order or positivity
hypotheses explicitly. Positivity is additional data over a suitable ordered
field, not part of an arbitrary field. A form-preserving map need not be a
constructed orthogonal group. Coordinate matrices require the relevant basis
and dimension. Sesquilinear Hermitian forms, general rings, infinite-dimensional
operator norms and analytic estimates require separately qualified scopes.

## Browse

Selected division criterion: Form data and the question about it. This increment
adds no narrower canonical records and makes no disjointness claim.

## Example and boundary

A quadratic form may be nonnegative on every two-coordinate restriction while
being negative at a vector with three nonzero coordinates. Those restricted
statements do not assert positivity of every principal minor of every size.
A finite rational reflection identity is distinct from a general quantum
algorithm or a physical realization.

## Sources and review

[L66](../../../../standards/index.md) retains the bounded standard terminology
warrant. The [proposal](../../../../proposals/new-concepts/bilinear-quadratic-forms.md)
records alternatives and acceptance criteria. Original local prose by grwtsk
contributors; field conventions and parentage remain proposed, with no
independent disciplinary review, mathematical novelty or proof acceptance.
