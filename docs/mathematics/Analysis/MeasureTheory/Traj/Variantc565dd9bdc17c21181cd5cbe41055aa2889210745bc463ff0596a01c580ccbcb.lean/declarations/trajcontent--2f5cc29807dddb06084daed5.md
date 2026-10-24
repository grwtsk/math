# trajContent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4b39f75f7a65b5b3e69c65e4db8ac62c02b6bcfc37db0fdc2cfe47a79734269",
  "kind": "def",
  "lexical_name": "trajContent",
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
  "slug": "trajcontent--2f5cc29807dddb06084daed5",
  "source": {
    "blob": "d74cf76d06abd4ac83e88e8a06b16bc1fc84a710",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 219,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f5cc29807dddb06084daed58cafcff6ff1c90a6927f2be3546642d34174284b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4b39f75f7a65b5b3e69c65e4db8ac62c02b6bcfc37db0fdc2cfe47a79734269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def trajContent {a : ℕ} (x₀ : Π i : Iic a, X i) :
    AddContent (measurableCylinders X) :=
  projectiveFamilyContent (isProjectiveMeasureFamily_partialTraj κ x₀)

variable {κ}

/-- The `trajContent κ x₀` of a cylinder indexed by first coordinates is given by `partialTraj`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d74cf76d06abd4ac83e88e8a06b16bc1fc84a710` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
