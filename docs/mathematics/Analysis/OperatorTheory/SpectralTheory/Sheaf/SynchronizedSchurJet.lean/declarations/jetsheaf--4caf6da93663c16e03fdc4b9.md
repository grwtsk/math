# JetSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28787c4500c47a22b82f352271ef22cc372efccc6b2938fdef6b2e7a2a58b272",
  "kind": "structure",
  "lexical_name": "JetSheaf",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "jetsheaf--4caf6da93663c16e03fdc4b9",
  "source": {
    "blob": "1decd0fe306f36157a1acfef1b12a92440e5066e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 135,
    "path": "GRWTSK/Spectral/Sheaf/SynchronizedSchurJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4caf6da93663c16e03fdc4b964559eb554bf173a760cab796a4972711ab52322",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28787c4500c47a22b82f352271ef22cc372efccc6b2938fdef6b2e7a2a58b272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure JetSheaf
    (Vertex : Type*) (P : Vertex → Type*) (order : ℕ)
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, Fintype (P vertex)]
    [∀ vertex, DecidableEq (P vertex)] where
  edge : EdgeRelation Vertex
  frequency : Vertex → ℚ
  ordered : OrderedBy frequency edge
  jet : ∀ vertex, JetCertificate (P vertex) order
  synchronized : ∀ vertex, SynchronizedJet (P vertex) order (jet vertex)
  resolution : ∀ vertex, SectorResolution (P vertex) order (jet vertex)
  restrict : ∀ {source target}, edge source target →
    Matrix (P target) (P source) ℂ
  effective_intertwines : ∀ {source target}
      (arrow : edge source target) (z : ℂ),
    restrict arrow * (jet source).effective z =
      (jet target).effective z * restrict arrow
  coefficient_intertwines : ∀ {source target}
      (arrow : edge source target) (j : Fin (order + 1)),
    restrict arrow * (jet source).coefficient j =
      (jet target).coefficient j * restrict arrow
  sigma_intertwines : ∀ {source target}
      (arrow : edge source target),
    restrict arrow * ((synchronized source).actions).sigma =
      ((synchronized target).actions).sigma * restrict arrow
  tau_intertwines : ∀ {source target}
      (arrow : edge source target),
    restrict arrow * ((synchronized source).actions).tau =
      ((synchronized target).actions).tau * restrict arrow

namespace JetSheaf

variable {Vertex : Type*} {P : Vertex → Type*} {order : ℕ}
  [Fintype Vertex] [DecidableEq Vertex]
  [∀ vertex, Fintype (P vertex)]
  [∀ vertex, DecidableEq (P vertex)]

/-- Matrix transport along a nonempty graph path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/Sheaf/SynchronizedSchurJet.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1decd0fe306f36157a1acfef1b12a92440e5066e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
