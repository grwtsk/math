# liftCompHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aec0e1f2894e61fb76602a109a2c2dcfe39fe3029176f08ccc93264603b5b935",
  "kind": "def",
  "lexical_name": "liftCompHomotopy",
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
  "slug": "liftcomphomotopy--4e9d8e71392824cc0291d173",
  "source": {
    "blob": "ca3148b0af5f0d56857fae42235e6bf1fa99b76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 173,
    "path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant537774abeb1ee95d9ebc7d7f0dd97ed56601a687305209438199d94576126ec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e9d8e71392824cc0291d1738a353aafc74b10b8f45bf672fc0f5c7f49e75adc",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Resolution/Variant537774abeb1ee95d9ebc7d7f0dd97ed56601a687305209438199d94576126ec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aec0e1f2894e61fb76602a109a2c2dcfe39fe3029176f08ccc93264603b5b935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftCompHomotopy {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (P : ProjectiveResolution X)
    (Q : ProjectiveResolution Y) (R : ProjectiveResolution Z) :
    Homotopy (lift (f ≫ g) P R) (lift f P Q ≫ lift g Q R) := by
  apply liftHomotopy (f ≫ g) <;> simp

-- We don't care about the actual definitions of these homotopies.
/-- Any two projective resolutions are homotopy equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Resolution/Variant537774abeb1ee95d9ebc7d7f0dd97ed56601a687305209438199d94576126ec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Resolution/Variant537774abeb1ee95d9ebc7d7f0dd97ed56601a687305209438199d94576126ec3.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3148b0af5f0d56857fae42235e6bf1fa99b76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
