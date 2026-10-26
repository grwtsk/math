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
| `id`, `slug`, `aliases`, `kind` | Persistent identity, readable canonical slug, retained legacy names, and `leaf` or `composite`. |
| `title`, `author`, `abstract` | The article's maintained metadata. Higher-level previews derive from these fields. |
| `subjects` | Primary subject ID and additional associations with review status and rationale. |
| `statements` | Exact hypotheses, conclusion, classification, fully qualified declarations, and `source_pins` for each statement. |
| Named proof section and `composition` | Authored proof text; composite component identities, roots, conclusion, bridge status, and unresolved premises. |
| `statements[].source_pins` | Repository, full source commit, path/blob, and relevant upstream pins. |
| `verification` | Status, exact scope, evidence references with their source pins, axiom policy, unresolved premises, and limitations. Operational receipts retain environment bindings and actual commands or `NOT_RUN` in Noeaaeue. |
| Statement `classification` and named sources section | Imported mathematics, verified bridge, source candidate, conditional interface, finite evidence, analogy, and unresolved premises remain distinct. |
| `metrics` | Observations with their own method, coverage, source/profile/graph identities, and missingness. |
| `issue` | Positive revision, canonical date, and actual issuance timestamp; dates remain null when no such event is recorded. |

Do not invent publication dates, proof composition, verification receipts, or
contribution claims to fill a template. Slug aliases retain previous names as
metadata; they do not create HTTP redirects or preserve a moved file's URL.
Keep old locations addressable until an explicit link migration or redirect is
published. Colliding slugs must be disambiguated before publication. Renaming or
moving an article preserves its result identity and records the old location.

A composite proof must state a conclusion and explain how its component
statements establish that conclusion under their exact hypotheses. A collection
of links alone is a collection, not a composite proof. Its graph root set is the
union of the conclusion's declared roots. Measure that union once; **never add
component spectral scores**, since their dependencies can overlap.

## Chosen spectral volume

An edge points from an elaborated declaration that consumes a constant to the
prerequisite constant. A selected edge has kind `proof_reference`,
`statement_reference`, or `declaration_metadata_reference`; imports, citations, taxonomy edges, and lexical name
matches are separate relations.

The active [radius-three profile](ranking-profile.json) is
`spectral-volume-radius3-v2`. It gives each of these three kinds weight one,
retains upstream prerequisites, and requires eligible kernel verification.
Structural metadata references include constructors, recursor rules, mutual
blocks, and projection structures reported by the compiler. Each retained kind
requires an explicit weight. The [profile history](ranking-profiles/index.md)
preserves previous definitions and their identities for reproducible comparison.

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
version/identity. The evaluator's `profile_digest` is SHA-256 of canonical JSON
after parsing; it identifies the policy independently of JSON formatting.
The complete source-observation schema instead records `profile_sha256` as the
SHA-256 of the original profile file bytes at its pinned source commit. This is
an artifact binding, not an evaluated metric's canonical policy digest. Compare
digests only after checking their schema and encoding. Compare scores only with
their profile and source scope visible.

The Noe evaluator uses standard-library rational Gaussian elimination to compute
the determinant exactly. It records the rational `exact_determinant`, vertex and
typed-edge counts, distances, deliberate upstream exclusions, graph/profile
digests, and source pin. It calculates the logarithm with decimal precision 50,
then provides a floating display value with absolute tolerance `1e-12`.
Ranking compares exact rational determinants before rounding; per-vertex
normalization compares the corresponding exact determinant powers. Persistent
IDs break actual ties. Inputs above `max_exact_vertices` are unavailable, not silently
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

A [supplemental least-prime demonstration](https://github.com/grwtsk/noeaaeue/tree/main/verification/math/result-publication/least-prime-local-source-replay-v1)
replays two exact local sources and measures their local dependency projection
under a fingerprinted cached environment. It deliberately excludes upstream
edges and records that narrower profile. The default upstream-inclusive scores
remain unavailable; the demonstration does not establish their missing closure.

## Formal statements and verification boundary

[`FiniteDependencyVolume.lean`](../../GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/FiniteDependencyVolume.lean)
contains definitions and theorems under
`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.FiniteDependencyVolume`:

- `boundedUpstream`, `mem_boundedUpstream_succ`,
  `boundedUpstream_subset_succ`, and `roots_subset_boundedUpstream` specify the
  finite radius expansion and its boundary.
- `boundedUpstream_union` and `boundedUpstream_duplicate` establish composite
  union and deduplication laws.
- `WeightedEdges`, `incidence`, `incidence_loop`, `laplacian`, and
  `laplacian_symmetric` specify the incidence operator and its symmetry.
- `PositiveRegularizedDeterminant` is an explicit premise of
  `spectralLogVolume`.

The targeted source check was performed at commit
`b5cc46c5748f1690cb6a0eda3ed9d48731290377`, before the current path and
namespace migration:

```sh
lake env lean GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean
```

The check passed for those source bytes. It does not establish a fresh check of
the renamed source or cover the whole repository.
The determinant-positivity derivation, a graph-extractor refinement theorem,
relabeling/spectral invariance proof, and a Lean-to-Python numerical refinement
remain missing bridges. Python fixture tests check concrete chains, shared
dependencies, multiple roots, cycles, loops, boundary behavior, weights,
relabeling, trust policies, stale/missing evidence, and resource limits; they do
not close those mathematical or provenance bridges.
