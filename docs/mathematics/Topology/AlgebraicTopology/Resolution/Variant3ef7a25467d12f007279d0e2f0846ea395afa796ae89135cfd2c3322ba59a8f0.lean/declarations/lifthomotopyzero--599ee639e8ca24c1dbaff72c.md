# liftHomotopyZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2025667d165f61d99aca25dab3376760e036f46277d34fc7d5041c4bb3474fd3",
  "kind": "def",
  "lexical_name": "liftHomotopyZero",
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
  "slug": "lifthomotopyzero--599ee639e8ca24c1dbaff72c",
  "source": {
    "blob": "b4e50245597028563330c53a420fd026f16a22f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:599ee639e8ca24c1dbaff72c14260387e6579eeeb9d47a7d38d87ce813d7d7f8",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2025667d165f61d99aca25dab3376760e036f46277d34fc7d5041c4bb3474fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftHomotopyZero {Y Z : C} {P : ProjectiveResolution Y} {Q : ProjectiveResolution Z}
    (f : P.complex ⟶ Q.complex) (comm : f ≫ Q.π = 0) : Homotopy f 0 :=
  Homotopy.mkInductive _ (liftHomotopyZeroZero f comm) (by simp )
    (liftHomotopyZeroOne f comm) (by simp) fun n ⟨g, g', w⟩ =>
    ⟨liftHomotopyZeroSucc f n g g' w, by simp⟩

/-- Two lifts of the same morphism are homotopic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Resolution/Variant3ef7a25467d12f007279d0e2f0846ea395afa796ae89135cfd2c3322ba59a8f0.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4e50245597028563330c53a420fd026f16a22f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
