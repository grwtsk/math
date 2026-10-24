# Valley

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb4590846ff1ed119843338f5184a7e33d712265aa9bac1f6227060464fb8017",
  "kind": "def",
  "lexical_name": "Valley",
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
  "slug": "valley--16b3b665a9f0ac4aeeece0cb",
  "source": {
    "blob": "4ff59342ec5383a568d0f98668d727728e63faee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16b3b665a9f0ac4aeeece0cba22c44804029cef34782ff37c35d909e26dda488",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb4590846ff1ed119843338f5184a7e33d712265aa9bac1f6227060464fb8017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Valley (cs : ι → Cube (n + 1)) (c : Cube (n + 1)) : Prop :=
  (c.bottom ⊆ ⋃ i : ι, (cs i).bottom) ∧
  (∀ i, (cs i).b 0 = c.b 0 →
    (∃ x, x ∈ (cs i).tail.toSet ∩ c.tail.toSet) → (cs i).tail.toSet ⊆ c.tail.toSet) ∧
  ∀ i : ι, (cs i).b 0 = c.b 0 → (cs i).w ≠ c.w

variable {c : Cube (n + 1)} (h : Correct cs) (v : Valley cs c)

/-- The bottom of the unit cube is a valley -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CubingACube/Variantcdc02e64e1d6c705c02a492f3634ec8ec5974ada731fe5a9376a05bc63f4cfe4.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ff59342ec5383a568d0f98668d727728e63faee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
