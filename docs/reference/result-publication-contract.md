# Result publication and measurement contract

Maintained by grwtsk contributors. Contract version: `grwtsk.result-publication.v1`.

The public reading route is the root README, the results index at
[`../mathematics/index.md`](../mathematics/index.md), increasingly specific subject
pages, and result articles. **Every level of that route is co-located under
`docs/mathematics/`.** A subject's index and its more specific subjects occupy
the same directory hierarchy. `docs/taxonomy/` remains the authoritative subject
metadata; the mathematics hierarchy is its navigation projection. A source
namespace, an import relation, or an unreviewed classification does not become a
reviewed mathematical subject assignment through publication.

Executable extraction, generation, numerical evaluation, replay, receipts, and
mutable state belong to `grwtsk/noeaaeue`. This repository maintains mathematical
definitions, authored articles, taxonomy metadata, static profiles, and published
documentation. A generated observation names the exact math source revision it
measures; editing documentation does not refresh its verification evidence.

## Subjects and recursive previews

A subject page retains its persistent taxonomy identity, title, scope, relation
status, canonical navigation parent, other mathematical parents, and source
metadata. It enumerates **all immediate children**, with links to their indexes,
then exposes the same fields at the next level. Every subject and subsubject
uses the same preview contract:

| Field | Meaning |
| --- | --- |
| `subject_id`, `title`, `slug`, `url` | Persistent identity and canonical location. A title change does not mint a new identity. |
| `scope`, `classification_status` | Authored mathematical scope and the actual review status of its classification. |
| `child_count`, `children` | Complete immediate child enumeration, not a selected sample. |
| `result_count`, `result_ids` | Unique published result identities in the descendant union. |
| `verification_coverage` | Separate eligible, pending, conditional, stale, and unavailable populations. |
| `top_results` | Up to `top_k` eligible results with available measurements, ordered by the active profile. |
| `unranked_results` | Result previews whose score is unavailable, with the actual reason. |
| `profile_id`, `profile_digest`, `source_pin` | The selection and source identities behind the preview. |

Multiple mathematical parents are allowed. A cross-branch result has one
canonical article, memberships in every applicable subject, and one identity in
an ancestor's deduplicated count. Source occurrences remain accessible even when
their subject or verification is unassessed. No million-article prose expansion
or inference of proof validity follows from lexical catalogue membership.

## Leaf articles and composite proofs

Articles use a mathematical journal form: title; local byline exactly
`grwtsk contributors`; self-contained abstract; subject metadata; numbered
definitions, hypotheses, statements, and proofs; dependencies; references; and
revision information. This is a project publication form inspired by mathematical
journal exposition, not a claim of acceptance by an external journal.

An article record contains the following data independently of its prose:

| Field | Required content |
| --- | --- |
| `id`, `slug`, `aliases`, `article_kind` | Persistent identity, readable canonical slug, retained legacy names, and `result` or `composite`. |
| `title`, `byline`, `abstract` | The article's own maintained prose. Higher-level previews derive from these fields. |
| `subject_associations` | Subject IDs, typed relation, review status, and rationale. |
| `statement` | Exact hypotheses, conclusion, fully qualified root declarations, and unresolved premises. |
| `proof` | Proof text or outline, component result identities, and the exact composition argument. |
| `source_bindings` | Repository, full source commit, path/blob, declaration identity, and relevant upstream pins. |
| `evidence` | Kind, exact scope, receipt reference, environment, permitted axioms, trust policy, actual commands or `NOT_RUN`, and limitations. |
| `contribution_class`, `references` | Imported mathematics, verified bridge, source candidate, conditional interface, finite evidence, analogy, and unresolved premises remain distinct. |
| `metrics` | Observations with their own method, coverage, source/profile/graph identities, and missingness. |
| `issue` | Local issue identity, revision, issue date when actually issued, and superseded revision. |

Do not invent publication dates, proof composition, verification receipts, or
contribution claims to fill a template. Slug aliases preserve previous links;
case and Unicode collisions require a stable identity suffix. Renaming or moving
an article preserves its result identity and records the old location.

A composite proof must state a conclusion and explain how its component
statements establish that conclusion under their exact hypotheses. A collection
of links alone is a collection, not a composite proof. Its graph root set is the
union of the conclusion's declared roots. Measure that union once; **never add
component spectral scores**, since their dependencies can overlap.

## Chosen spectral volume

An edge points from an elaborated declaration that consumes a constant to the
prerequisite constant. A selected edge has kind `proof_reference` or
`statement_reference`; imports, citations, taxonomy edges, and lexical name
matches are separate relations.

For a root set \(R\), let \(d_R(v)\) be the minimum directed upstream path length
and set

\[
N_r(R)=\{v:d_R(v)\le r\}.
\]

The default radius is three arrows. Roots, vertices, and typed edges
`(source, target, kind)` are deduplicated. The selected subgraph is induced on
\(N_r(R)\); a fully known edge beyond the radius is a deliberate boundary, not
missing extraction. The same endpoint pair can have different edge kinds, and
opposite arrows remain distinct. Loops contribute zero to the Laplacian.

For each selected induced edge \(e=(u,v,k)\), write

\[
w_e=a_k\,\delta^{\min(d_R(u),d_R(v))},\qquad
b_e=\mathbf1_u-\mathbf1_v,\qquad
L_r=\sum_e w_e b_e b_e^{\mathsf T}.
\]

Here \(a_k\ge0\), \(\delta\ge0\), and \(\tau>0\) are explicit rational profile
parameters. Use the ordinary convention \(\delta^0=1\), including \(0^0\) in
this formula. Edge kinds with zero weight are excluded before reachability;
their omitted edges do not admit vertices. The default profile uses unit weights
and decay, \(\tau=1\), and includes pinned upstream dependencies.

The project's spectral volume and its ranking score are

\[
V_r(R)=\sqrt{\det(I+\tau L_r)},\qquad
S_r(R)=\log V_r(R)=\tfrac12\log\det(I+\tau L_r).
\]

The symmetric incidence Laplacian is used because the adjacency spectrum of a
directed acyclic graph cannot distinguish these structures. The nonnegative
weights mathematically make this Laplacian positive semidefinite, with a positive
regularized determinant. This explanation is not a claim that the full argument
or Python evaluator has been formalized. Larger scores describe greater weighted
dependency structure under the chosen profile. They do not measure correctness,
originality, historical influence, or mathematical significance.

`normalization: none` uses \(S_r\); `per_vertex` uses \(S_r/|N_r(R)|\). The
configured `upstream_policy` is `include` or `local_only`. The latter records
excluded resolved upstream edges as a deliberate boundary. Unknown targets or
missing upstream pins are unavailable evidence, not deliberate exclusions.

## Public graph and eligibility

Only a public projection of suitable declaration evidence can supply the metric.
The format is `grwtsk.verification-dependency-graph.v1`:

```json
{
  "schema": "grwtsk.verification-dependency-graph.v1",
  "source_pin": {"repository": "https://github.com/grwtsk/math", "commit": "FULL_COMMIT"},
  "evidence": {
    "kind": "declaration_reference",
    "verification_status": "kernel_verified",
    "source_complete": true,
    "dependency_complete": true,
    "trust_policy_digest": "sha256:PROFILE_TRUST_POLICY_DIGEST"
  },
  "declarations": [{
    "id": "GRWTSK.Subject.result",
    "scope": "local",
    "verification_status": "kernel_verified",
    "dependencies_complete": true,
    "axioms": ["propext"],
    "dependencies": [{"target": "GRWTSK.Subject.prerequisite", "kind": "proof_reference"}]
  }]
}
```

The example abbreviates the graph: every referenced selected target must have a
declaration record. Every upstream declaration additionally carries its own
`source_pin`. Every visited declaration has a complete dependency list, including
at the radius boundary, and a known axiom closure within the profile's explicit
`permitted_axioms`. `sorryAx` is not permitted by the default profile. Empty
axiom lists and empty dependency lists are actual assertions of completeness;
missing lists do not mean empty lists.

The published evidence must additionally preserve the actual toolchain,
dependency/environment digest, extractor identity/version, replay receipt
reference and exact verification scope. The numerical function validates the
typed graph, expected source pin, completeness declarations, eligibility, and
trust-policy binding. It does **not** authenticate these assertions, reopen
receipts, or perform kernel verification. The public adapter and its caller must
establish provenance and receipt scope before passing an eligible graph. A
private compiled audit artifact must not be copied wholesale into documentation.

The caller resolves the expected source pin independently of the graph. A stale
pin, unverified or partial extraction, unknown root or dependency, unknown axiom
closure, unpermitted axiom, resource limit, or missing required evidence produces
`status: unavailable`, `value: null`, and a reason. Display **score unavailable**,
not zero. A verified isolated root can have the known score zero; that differs
from absence of a measurement. Current lexical occurrence and import inventories
do not establish this graph or its receipt requirements.

## Profiles, observations, and further metrics

The active static profile is [`ranking-profile.json`](ranking-profile.json), with
schema `grwtsk.result-ranking-profile.v1`. It controls radius, rational edge
weights, distance decay, \(\tau\), upstream policy, normalization, verification
eligibility, explicit trust policy, top-preview count, and the finite exact
evaluation limit. Missingness is `unavailable_with_reason`. Ties use persistent
result identity in ascending order. Every changed policy gets a new profile
version/identity; canonical JSON SHA-256 binds the exact profile bytes after JSON
parsing. Compare scores only with their profile and source scope visible.

The Noe evaluator uses standard-library rational Gaussian elimination to compute
the determinant exactly. It records the rational `exact_determinant`, vertex and
typed-edge counts, distances, deliberate upstream exclusions, graph/profile
digests, and source pin. It calculates the logarithm with decimal precision 50,
then provides a floating display value. Display comparisons use absolute
tolerance `1e-12`; exact determinants remain the primary finite calculation
record. Inputs above `max_exact_vertices` are unavailable, not silently
truncated. This is a computational check, not a Lean proof certificate.

An extensible observation has `metric_id`, `status`, `value`, `units`, `method`,
`coverage`, `source_pin`, input/profile digests, and a missingness reason where
applicable. Additional metrics live in `other_metrics`; they keep their own
units, denominators, eligibility, and method. Incoming reuse, proof coverage,
hypothesis scope, and article quality need not share a numeric scale with
spectral volume.

`qualitative_rubrics` records versioned criteria, allowed labels, assessor
attribution, evidence, and assessment date. Unknown is explicit. Reviewer
judgments are assessments, not inferred numerical facts. No secondary metric or
rubric changes the spectral ranking unless a later explicit profile defines its
aggregation, direction, weight, missingness, and justification.

## Formal statements and verification boundary

[`FiniteDependencyVolume.lean`](../../GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean)
contains definitions and theorems under
`GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume`:

- `boundedUpstream`, `mem_boundedUpstream_succ`,
  `boundedUpstream_subset_succ`, and `roots_subset_boundedUpstream` specify the
  finite radius expansion and its boundary.
- `boundedUpstream_union` and `boundedUpstream_duplicate` establish composite
  union and deduplication laws.
- `WeightedEdges`, `incidence`, `incidence_loop`, `laplacian`, and
  `laplacian_symmetric` specify the incidence operator and its symmetry.
- `PositiveRegularizedDeterminant` is an explicit premise of
  `spectralLogVolume`.

Targeted source check performed:

```sh
lake env lean GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean
```

The check passed for the added source. This does not cover the whole repository.
The determinant-positivity derivation, a graph-extractor refinement theorem,
relabeling/spectral invariance proof, and a Lean-to-Python numerical refinement
remain missing bridges. Python fixture tests check concrete chains, shared
dependencies, multiple roots, cycles, loops, boundary behavior, weights,
relabeling, trust policies, stale/missing evidence, and resource limits; they do
not close those mathematical or provenance bridges.
