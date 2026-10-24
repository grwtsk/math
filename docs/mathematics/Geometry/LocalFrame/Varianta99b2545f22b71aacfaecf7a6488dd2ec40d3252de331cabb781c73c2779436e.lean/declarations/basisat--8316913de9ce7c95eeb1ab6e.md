# basisAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aa76842b381836af37bee707270cfe72b46f9bc20d31127ff1c96eed37a2818",
  "kind": "def",
  "lexical_name": "basisAt",
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
  "slug": "basisat--8316913de9ce7c95eeb1ab6e",
  "source": {
    "blob": "8faf46c7aa6cf751428e604e21bad1cbbe246750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 333,
    "path": "GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8316913de9ce7c95eeb1ab6e31f00988d09235bf7516e595ffa579528e0fb7d1",
  "verification": {
    "reference": "docs/verification/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aa76842b381836af37bee707270cfe72b46f9bc20d31127ff1c96eed37a2818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def basisAt (hx : x ∈ e.baseSet) : Basis ι 𝕜 (V x) :=
  b.map (e.linearEquivAt (R := 𝕜) x hx).symm

open scoped Classical in
/-- The local frame on `V` induced by a compatible local trivialization `e` of `V` and a basis
`b` of the model fiber `F`. Use `e.localFrame b i` to access the `i`-th section in that frame.

If `x` is outside of `e.baseSet`, this returns the junk value 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8faf46c7aa6cf751428e604e21bad1cbbe246750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
