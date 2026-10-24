# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64f4f6c4e9e5f02fe3d480b051f0819a2173237fe3c1baf32866305b533063ff",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--66abfca985e7ec9586aaaeb7",
  "source": {
    "blob": "eea17316f545e2f7b85a920ee37fd7d060fdb416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/GConvert/Variant6e16ce53f00a789b6f807c2d365593e89dea239a3825e0e8698a1b9062c8d439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66abfca985e7ec9586aaaeb7fa026001e9b5041aed267ca747bac78e9b48351e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GConvert/Variant6e16ce53f00a789b6f807c2d365593e89dea239a3825e0e8698a1b9062c8d439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64f4f6c4e9e5f02fe3d480b051f0819a2173237fe3c1baf32866305b533063ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (p q : ℝ → ℝ → Prop) (h : ∀ ε > 0, ∃ δ > 0, p ε δ)
    (hpq : ∀ x y, x > 0 → y > 0 → p x y → q x y) :
    ∀ ε > 0, ∃ δ > 0, q ε δ := by
  gconvert h with ε hε δ hδ h; exact hpq ε δ hε hδ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GConvert/Variant6e16ce53f00a789b6f807c2d365593e89dea239a3825e0e8698a1b9062c8d439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GConvert/Variant6e16ce53f00a789b6f807c2d365593e89dea239a3825e0e8698a1b9062c8d439.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eea17316f545e2f7b85a920ee37fd7d060fdb416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
