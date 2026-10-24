# Finite dependency neighborhoods and spectral volume

grwtsk contributors

<!-- BEGIN GENERATED RESULT ABSTRACT -->

## Abstract

A finite upstream dependency neighborhood records each prerequisite once, even when several roots share it. Neighborhoods preserve unions of root sets. A weighted incidence Laplacian defines a configurable logarithmic spectral volume; the extraction, determinant-positivity, and numerical-refinement bridges retain their separate proof obligations.

<!-- END GENERATED RESULT ABSTRACT -->

[Results in this area](index.md) · [Results index](../../index.md)

## 1. Statements and hypotheses

### 1.1. Root-union law

Classification: source-proof-candidate.

Hypotheses:

- V is a type with decidable equality.
- successors : V → Finset V; left right : Finset V; radius : ℕ.

Conclusion: boundedUpstream successors (left ∪ right) radius = boundedUpstream successors left radius ∪ boundedUpstream successors right radius

Declarations: `GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume.boundedUpstream_union`.

### 1.2. Duplicate-component law

Classification: source-proof-candidate.

Hypotheses:

- V is a type with decidable equality.
- successors : V → Finset V; roots : Finset V; radius : ℕ.

Conclusion: boundedUpstream successors (roots ∪ roots) radius = boundedUpstream successors roots radius

Declarations: `GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume.boundedUpstream_duplicate`.

### 1.3. Incidence-Laplacian symmetry

Classification: source-proof-candidate.

Hypotheses:

- E is finite; V has decidable equality.
- edges : WeightedEdges V E; left right : V.

Conclusion: laplacian edges left right = laplacian edges right left

Declarations: `GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume.laplacian_symmetric`.


## 2. Proof

The neighborhood starts with the finite root set. Each successor step takes the
union of the previous neighborhood and all direct prerequisites of its vertices.
Induction on the radius, distributing finite unions, proves the root-union law.
Idempotence of finite union proves that repeating a component adds no vertex.
The incidence Laplacian is symmetric because each edge contributes the symmetric
outer product of its signed endpoint vector with itself.

For a selected edge e with weight w(e), write b(e) for its incidence vector.
The publication profile defines

\[
L_3=\sum_e w(e)b(e)b(e)^{\mathsf T},\qquad
S_3=\tfrac12\log\det(I+\tau L_3).
\]

The radius, edge kinds, rational weights, distance decay, upstream boundary,
normalization, and trust eligibility are separately configurable. A directed
adjacency spectrum would be degenerate for an acyclic dependency graph; the
symmetric incidence operator preserves a nontrivial spectral measurement.

The Lean definition `spectralLogVolume` explicitly requires a positive
regularized determinant. The current file proves symmetry and neighborhood
laws; it does not prove that determinant positivity follows from nonnegative
weights. It also does not identify a supplied graph with actual proof dependencies.

## 3. Composition

Not applicable: this is a leaf article.

## 4. Verification and trust boundary

Recorded status: **SCOPED_EVIDENCE**.

Scope: Targeted Lean elaboration of the added source passed. This is not a whole-library build, transitive imported-source replay, complete axiom audit, graph extraction, or numerical refinement certificate.

Axiom policy: Complete transitive axiom audit NOT_RUN. The determinant-positivity hypothesis of spectralLogVolume is explicit; no extraction or numerical theorem is assumed.

Unresolved: The Lean derivation of positivity of det(I + τ L) from nonnegative incidence weights and τ > 0 remains to be supplied.; The compiler-extraction and numerical-refinement bridges remain separate obligations.

Evidence: command:lake env lean GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean (Command completed with exit status 0 for the exact added source; upstream compiled dependencies were supplied by the configured environment.)

The configured inputs are Lean `leanprover/lean4:v4.33.0` and Mathlib commit
`db584cd6d46c92f209a44c0f1c829460d327499d`. The check covers this added source
under that imported environment. A complete imported-source replay and axiom
audit remain outside its scope. Reading the record does not replay the check.

## 5. Sources and missing bridges

The [Lean source](../../../../GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean)
is maintained under `GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume`.
These are project definitions and local structural arguments, with upstream
Mathlib authorship and Apache-2.0 terms retained through the imports. No claim of
mathematical originality is made.

The [measurement contract](../../../reference/result-publication-contract.md)
and [weight profile](../../../reference/ranking-profile.json) state exact graph,
evidence, and missingness rules. Executable evaluation and publication live in
[Noeaaeue](https://github.com/grwtsk/noeaaeue/tree/main/bindings/mathematics/organization).
Determinant positivity, relabeling/spectral invariance, source-extractor
refinement, and Lean-to-Python numerical refinement remain explicit missing bridges.

## 6. Revision and issuance

The structured article record retains the revision, canonical date, and actual issue
timestamp separately. Unissued drafts use null dates. Article and metric profile
versions must remain distinguishable. A change of slug retains its old slug as
an alias; aliases do not automatically create URL redirects. A change of
identity creates a distinct article.

<!-- BEGIN RESULT ARTICLE METADATA
{
  "result_article": {
    "schema": "grwtsk.result-article/1",
    "id": "finite-dependency-volume",
    "slug": "finite-dependency-volume",
    "aliases": [],
    "kind": "leaf",
    "title": "Finite dependency neighborhoods and spectral volume",
    "author": "grwtsk contributors",
    "abstract": "A finite upstream dependency neighborhood records each prerequisite once, even when several roots share it. Neighborhoods preserve unions of root sets. A weighted incidence Laplacian defines a configurable logarithmic spectral volume; the extraction, determinant-positivity, and numerical-refinement bridges retain their separate proof obligations.",
    "subjects": {
      "primary": "urn:uuid:7a3f0995-b0b9-4b1b-9a97-00e9b7bb3baa",
      "associations": []
    },
    "statements": [
      {
        "id": "Root-union law",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "V is a type with decidable equality.",
          "successors : V → Finset V; left right : Finset V; radius : ℕ."
        ],
        "conclusion": "boundedUpstream successors (left ∪ right) radius = boundedUpstream successors left radius ∪ boundedUpstream successors right radius",
        "declarations": [
          "GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume.boundedUpstream_union"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "b5cc46c5748f1690cb6a0eda3ed9d48731290377",
            "path": "GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean",
            "blob": "7fbe62783332b2b420e4fba71535285a7b3422ab"
          }
        ]
      },
      {
        "id": "Duplicate-component law",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "V is a type with decidable equality.",
          "successors : V → Finset V; roots : Finset V; radius : ℕ."
        ],
        "conclusion": "boundedUpstream successors (roots ∪ roots) radius = boundedUpstream successors roots radius",
        "declarations": [
          "GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume.boundedUpstream_duplicate"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "b5cc46c5748f1690cb6a0eda3ed9d48731290377",
            "path": "GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean",
            "blob": "7fbe62783332b2b420e4fba71535285a7b3422ab"
          }
        ]
      },
      {
        "id": "Incidence-Laplacian symmetry",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "E is finite; V has decidable equality.",
          "edges : WeightedEdges V E; left right : V."
        ],
        "conclusion": "laplacian edges left right = laplacian edges right left",
        "declarations": [
          "GRWTSK.Combinatorics.DirectedGraph.FiniteDependencyVolume.laplacian_symmetric"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "b5cc46c5748f1690cb6a0eda3ed9d48731290377",
            "path": "GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean",
            "blob": "7fbe62783332b2b420e4fba71535285a7b3422ab"
          }
        ]
      }
    ],
    "verification": {
      "status": "SCOPED_EVIDENCE",
      "scope": "Targeted Lean elaboration of the added source passed. This is not a whole-library build, transitive imported-source replay, complete axiom audit, graph extraction, or numerical refinement certificate.",
      "evidence": [
        {
          "reference": "command:lake env lean GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean",
          "scope": "Command completed with exit status 0 for the exact added source; upstream compiled dependencies were supplied by the configured environment.",
          "source_pins": [
            {
              "repository": "https://github.com/grwtsk/math",
              "commit": "b5cc46c5748f1690cb6a0eda3ed9d48731290377",
              "path": "GRWTSK/Combinatorics/DirectedGraph/FiniteDependencyVolume.lean",
              "blob": "7fbe62783332b2b420e4fba71535285a7b3422ab"
            }
          ]
        }
      ],
      "axiom_policy": "Complete transitive axiom audit NOT_RUN. The determinant-positivity hypothesis of spectralLogVolume is explicit; no extraction or numerical theorem is assumed.",
      "unresolved_premises": [
        "The Lean derivation of positivity of det(I + τ L) from nonnegative incidence weights and τ > 0 remains to be supplied.",
        "The compiler-extraction and numerical-refinement bridges remain separate obligations."
      ]
    },
    "composition": null,
    "issue": {
      "revision": 1,
      "canonical_date": null,
      "issued_at": null
    },
    "metrics": [
      {
        "id": "spectral-log-volume-3",
        "value": null,
        "method": "Versioned radius-three weighted incidence Laplacian.",
        "version": "1",
        "coverage": "No public replay-bound graph for this article.",
        "provenance": "The targeted Lean source check does not construct a verification dependency graph."
      }
    ]
  }
}
END RESULT ARTICLE METADATA -->
