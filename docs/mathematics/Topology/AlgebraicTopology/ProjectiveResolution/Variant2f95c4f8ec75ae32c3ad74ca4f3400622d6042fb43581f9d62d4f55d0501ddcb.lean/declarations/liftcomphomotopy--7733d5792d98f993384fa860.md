# liftCompHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39733e07a5c1c562aab27f6f3ca4f272c59cffe028f61697627bf0e5daa147b7",
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
  "slug": "liftcomphomotopy--7733d5792d98f993384fa860",
  "source": {
    "blob": "94282e6f5976cce6a365daf9b32f3eda2ec690c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 271,
    "path": "GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7733d5792d98f993384fa86059e37ec0947bb499797fa013b392ffb147b2f6d5",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39733e07a5c1c562aab27f6f3ca4f272c59cffe028f61697627bf0e5daa147b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftCompHomotopy {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (P : ProjectiveResolution X)
    (Q : ProjectiveResolution Y) (R : ProjectiveResolution Z) :
    Homotopy (lift (f ≫ g) P R) (lift f P Q ≫ lift g Q R) := by
  apply liftHomotopy (f ≫ g) <;> simp
set_option linter.uppercaseLean3 false in
#align category_theory.ProjectiveResolution.lift_comp_homotopy CategoryTheory.ProjectiveResolution.liftCompHomotopy

-- We don't care about the actual definitions of these homotopies.
/-- Any two projective resolutions are homotopy equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variant2f95c4f8ec75ae32c3ad74ca4f3400622d6042fb43581f9d62d4f55d0501ddcb.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94282e6f5976cce6a365daf9b32f3eda2ec690c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
