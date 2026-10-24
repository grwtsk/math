# unitEmbedding_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7314478-79cd-a029-ad33-0bfc02ad4a44",
  "kind": "theorem",
  "lexical_name": "unitEmbedding_apply",
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
  "slug": "unitembedding-apply--e9a8f4e02e38ae419acb5ffa",
  "source": {
    "blob": "034ee21a854f318f9c0c9a94f4aae67c8a560683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 199,
    "path": "GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Varianta9eb9b4fa54baa2e2e1f0cfbdf6b230767bfe28730d97b71c4d118a86e9fb4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9a8f4e02e38ae419acb5ffa677a5907eec9a63a79503d7931eb2e3ae4ca0a32",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FiniteAdeleRing/Varianta9eb9b4fa54baa2e2e1f0cfbdf6b230767bfe28730d97b71c4d118a86e9fb4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7314478-79cd-a029-ad33-0bfc02ad4a44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem unitEmbedding_apply (k : Kˣ) : unitEmbedding R K k = algebraMap K 𝔸ᶠ[R, K] k := rfl

variable {R}

variable (K) in
/-- The embedding of the completion `Kᵥ` at a finite place `v` into the finite adele ring. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FiniteAdeleRing/Varianta9eb9b4fa54baa2e2e1f0cfbdf6b230767bfe28730d97b71c4d118a86e9fb4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Varianta9eb9b4fa54baa2e2e1f0cfbdf6b230767bfe28730d97b71c4d118a86e9fb4e5.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `034ee21a854f318f9c0c9a94f4aae67c8a560683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
