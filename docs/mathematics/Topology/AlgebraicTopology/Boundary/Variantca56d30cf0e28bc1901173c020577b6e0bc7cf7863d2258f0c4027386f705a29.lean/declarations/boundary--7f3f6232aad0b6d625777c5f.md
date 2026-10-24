# boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ede0a2a21bf0761a79448d2f921850727b3844b37fd70c37bbdb63e09cb70be",
  "kind": "def",
  "lexical_name": "boundary",
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
  "slug": "boundary--7f3f6232aad0b6d625777c5f",
  "source": {
    "blob": "491841dd56c58586a976996307814418718fd44a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 48,
    "path": "GRWTSK/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f3f6232aad0b6d625777c5f9224683a98e9090ed6c64160c85c9cf392978500",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ede0a2a21bf0761a79448d2f921850727b3844b37fd70c37bbdb63e09cb70be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundary (n : ℕ) : (Δ[n] : SSet.{u}).Subcomplex where
  obj _ := Set.ofPred (fun s ↦ ¬Function.Surjective (stdSimplex.asOrderHom s))
  map _ _ hs h := hs (Function.Surjective.of_comp h)

/-- The boundary `∂Δ[n]` of the `n`-th standard simplex -/
scoped[Simplicial] notation3 "∂Δ[" n "]" => SSet.boundary n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491841dd56c58586a976996307814418718fd44a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
