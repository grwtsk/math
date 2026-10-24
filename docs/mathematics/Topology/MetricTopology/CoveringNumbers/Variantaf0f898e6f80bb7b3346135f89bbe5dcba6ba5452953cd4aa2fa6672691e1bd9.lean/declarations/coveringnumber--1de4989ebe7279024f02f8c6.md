# coveringNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2384394ffe500899a59638de6b5017e79dc858ad697531658a3abbb922d70c1",
  "kind": "def",
  "lexical_name": "coveringNumber",
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
  "slug": "coveringnumber--1de4989ebe7279024f02f8c6",
  "source": {
    "blob": "75163648232b773ef5f67fb1669306b0ae191812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 85,
    "path": "GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1de4989ebe7279024f02f8c663b84652b024a811e8733af87d2ae0cfc98e8043",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2384394ffe500899a59638de6b5017e79dc858ad697531658a3abbb922d70c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coveringNumber (ε : ℝ≥0) (A : Set X) : ℕ∞ :=
  ⨅ (C : Set X) (_ : C ⊆ A) (_ : IsCover ε A C), C.encard

/-- The packing number of a set `A` for radius `ε` is the maximal cardinality (in `ℕ∞`)
of an `ε`-separated set in `A`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75163648232b773ef5f67fb1669306b0ae191812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
